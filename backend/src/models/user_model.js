const conn = require("../config/database");

// resolve: promise com sucesso
// reject: promise com algum erro, vem com um if normalmente

function get_user_data(data) {
  return new Promise((resolve, reject) => {
    if (!data) return reject(new Error("You need an id"));

    const query_sql = "SELECT * FROM users WHERE id_user = ?";

    conn.query(query_sql, [data.id], (error, results) => {
      if (error) return reject(error);
      resolve({
        query_sql,
        affectedRows: results.length,
        data: results,
      });
    });
  });
}

function signup(data) {
  // resolve é caso ser resolvido e reject se for rejeitado por um motivo, como !data e error = true
  return new Promise((resolve, reject) => {
    if (!data) return reject(new Error("You need to put data"));

    var password = btoa(data.password);

    const query_sql =
      "INSERT INTO users(name, email, tel, password, created_at ) VALUES (?, ?, ?, ?, NOW())";
    conn.query(
      query_sql,
      [data.name, data.email, data.tel, password],
      async (error, results) => {
        if (error) return reject(error);
        try {
          const data_id = {
            id: results.insertId,
          };
          const data_user = await get_user_data(data_id);
          resolve({
            query_sql,
            affectedRows: results.affectedRows,
            data: data_user.data[0],
            insertId: results.insertId,
          });
        } catch (error) {
          reject(error);
        }
      }
    );
  });
}

function login(data) {
  return new Promise((resolve, reject) => {
    if (!data) return reject(new Error("You need to put data"));

    const password = btoa(data.password);
    const query_sql = "SELECT * FROM users WHERE email = ? AND password = ?";
    conn.query(query_sql, [data.email, password], (error, results) => {
      if (error) return reject(error);
      if (results.length === 0)
        return reject(new Error("Email or password incorrect"));
      resolve({
        query_sql,
        affected_rows: results.length,
        data: results,
      });
    });
  });
}

function get_level_xp(id) {
  return new Promise((resolve, reject) => {
    if (!id) return reject(new Error("You need do send an id"));
    const query_sql = "SELECT * FROM users WHERE id_user = ?";
    conn.query(query_sql, [id], (error, results) => {
      if (error) return reject(error);
      if (results.length == 0) return reject("This user doesn´t exist");
      const results_correct = {
        user: results[0].name,
        email: results[0].email,
        xp: results[0].xp,
        level: results[0].ranking,
      };

      resolve({
        query_sql,
        affected_rows: results.length,
        data: results_correct,
        xp: results[0].xp,
        level: results[0].ranking,
      });
    });
  });
}

async function update_xp_level(id) {
  return new Promise(async (resolve, reject) => {
    if (!id) return reject(new Error("You didn't send a data"));

    try {
      const { xp, level } = await get_level_xp(id); // agora espera a função

      if (xp >= 1000) {
        const newLevel = level + 1;
        const query_sql =
          "UPDATE users SET xp = 0, ranking = ? WHERE id_user = ?";

        conn.query(query_sql, [newLevel, id], (error, results) => {
          if (error) return reject(error);
          resolve({
            query_sql,
            affected_rows: results.affectedRows,
            data: results,
            message: `Your new level is ${newLevel} and your xp is 0`,
          });
        });
      } else {
        resolve({
          query_sql: null,
          affected_rows: 0,
          data: null,
          message: `XP not enough to level up. Current XP: ${xp}`,
        });
      }
    } catch (error) {
      reject(error);
    }
  });
}

async function update_xp(id, xp_front) {
  return new Promise(async (resolve, reject) => {
    try {
      const { xp: currentXp } = await get_level_xp(id);

      // novo XP após o ganho
      let newXp = Number(currentXp) + Number(xp_front);

      // atualiza XP
      const query_sql = "UPDATE users SET xp = ? WHERE id_user = ?";
      conn.query(query_sql, [newXp, id], async (error, results) => {
        if (error) return reject(error);

        // depois de atualizar, verifica se precisa subir nível
        const levelResult = await update_xp_level(id);

        resolve({
          query_sql,
          affected_rows: results.affectedRows,
          data: results,
          message: `XP atualizado para ${newXp}. ${levelResult.message}`
        });
      });

    } catch (error) {
      reject(error);
    }
  });
}



module.exports = {
  get_user_data,
  signup,
  login,
  get_level_xp,
  update_xp_level,
  update_xp,
};
