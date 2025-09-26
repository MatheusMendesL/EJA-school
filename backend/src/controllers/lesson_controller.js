const functionsModel = require("../models/lesson_model");
const { response } = require("../utils/functions");

async function get_lesson_by_matter(req, res) {
  const matter_id = req.params.matter_id;
  try {
    const { query_sql, affectedRows, data } =
      await functionsModel.get_lesson_by_matter(matter_id);
    res.json(
      response(
        "success",
        "got the lesson of a matter with success",
        query_sql,
        affectedRows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error, null, 0, null));
  }
}

async function get_lesson(req, res) {
  const lesson_id = req.params.id;
  try {
    const { query_sql, affectedRows, data } = await functionsModel.get_lesson(
      lesson_id
    );
    res.json(
      response(
        "success",
        "got the lesson with success",
        query_sql,
        affectedRows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error, null, 0, null));
  }
}

async function get_lesson_by_level(req, res) {
  const level = req.params.level;
  try {
    const { query_sql, affectedRows, data } =
      await functionsModel.get_lesson_by_level(level);
    res.json(
      response(
        "success",
        "success to got the data",
        query_sql,
        affectedRows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error, null, 0, null));
  }
}

module.exports = {
  get_lesson,
  get_lesson_by_level,
  get_lesson_by_matter,
};
