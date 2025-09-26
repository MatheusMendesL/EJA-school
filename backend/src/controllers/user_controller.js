const functionsModel = require("../models/user_model");
const { response } = require("../utils/functions");
const jwt = require("jsonwebtoken");
const SECRET_KEY = require("../config/config_jwt");

// todas serão dessa forma

async function get_user(req, res) {
  const get_data = {
    id: req.params.id,
  };

  try {
    const { query_sql, affectedRows, data } =
      await functionsModel.get_user_data(get_data);
    res.json(
      response(
        "success",
        "Got user data successfully",
        query_sql,
        affectedRows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

async function signup(req, res) {
  const { name, email, tel, password } = req.body;
  const data_signup = {
    name: name,
    email: email,
    tel: tel,
    password: password,
  };

  try {
    // me retorna o que a promise resolveu, no caso a query e as linhas afetadas, dps executa minha função
    // e espera o retorno da função
    const { query_sql, affectedRows, data, insertId } =
      await functionsModel.signup(data_signup);

    if (!insertId)
      return res
        .status(500)
        .json({ status: "error", message: "Erro ao criar usuário" });
    const token = jwt.sign({ id: insertId }, SECRET_KEY, { expiresIn: "7d" });
    res.json(
      response("success", "User added successfully", query_sql, affectedRows, {
        ...data,
        token,
        insertId,
      })
    );
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

async function login(req, res) {
  const { email, password } = req.body;
  const loginData = {
    email: email,
    password: password,
  };

  try {
    const { query_sql, affected_rows, data } = await functionsModel.login(
      loginData
    );

    const token = jwt.sign(
      { id_user: data.id_user, email: data.email },
      SECRET_KEY,
      { expiresIn: "7d" }
    );

    res.json(
      response(
        "success",
        "Login was conclused successfully",
        query_sql,
        affected_rows,
        { ...data, token }
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

async function get_level_xp(req, res) {
  const id = req.params.id;
  try {
    const { query_sql, affected_rows, data, xp, level } =
      await functionsModel.get_level_xp(id);
    res.json(
      response(
        "success",
        `Your xp is: ${xp} and level: ${level}`,
        query_sql,
        affected_rows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

async function update_xp_level(req, res) {
  const id = req.params.id;
  try {
    const { query_sql, affected_rows, data, message } =
      await functionsModel.update_xp_level(id);
    res.json(response("success", message, query_sql, affected_rows, data));
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

async function update_xp(req, res) {
  const id = req.params.id;
  const xp = req.params.xp

  try {
    const { query_sql, affected_rows, data, message } =
      await functionsModel.update_xp(id, xp);
    res.json(response("success", message, query_sql, affected_rows, data));
  } catch (error) {
    res.status(500).json(response("error", error.message, null, 0, null));
  }
}

module.exports = {
  get_user,
  signup,
  login,
  get_level_xp,
  update_xp_level,
  update_xp,
};
