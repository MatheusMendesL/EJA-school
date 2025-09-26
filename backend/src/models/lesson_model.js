const conn = require("../config/database");

function get_lesson_by_matter(id) {
  return new Promise((resolve, reject) => {
    const query_sql =
      "SELECT id_lesson, title, content, level FROM lesson WHERE matter_id = ?";
    conn.query(query_sql, [id], (error, results) => {
      if (error) return reject(new Error("erro"));

      resolve({
        query_sql,
        affectedRows: results.length,
        data: results,
      });
    });
  });
}

function get_lesson(id) {
  return new Promise((resolve, reject) => {
    const query_sql = "SELECT * FROM lesson WHERE id_lesson = ?";
    conn.query(query_sql, [id], (error, results) => {
      if (error) return new reject(new Error("erro"));

      resolve({
        query_sql,
        affectedRows: results.length,
        data: results,
      });
    });
  });
}

function get_lesson_by_level(level) {
  return new Promise((resolve, reject) => {
    const query_sql = "SELECT * FROM lesson WHERE level = ?";
    conn.query(query_sql, [level], (error, results) => {
      if (error) return reject(new Error("erro"));

      resolve({
        query_sql,
        affectedRows: results.length,
        data: results,
      });
    });
  });
}

module.exports = {
  get_lesson,
  get_lesson_by_level,
  get_lesson_by_matter,
};
