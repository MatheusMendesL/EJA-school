const functionsModel = require("../models/task_model");
const { response } = require("../utils/functions");

async function get_tasks(req, res) {
  const lesson_id = req.params.lesson_id;

  try {
    const { query_sql, affectedRows, data } = await functionsModel.get_tasks(
      lesson_id
    );
    res.json(
      response(
        "success",
        "got the tasks with success",
        query_sql,
        affectedRows,
        data
      )
    );
  } catch (error) {
    res.status(500).json(response("error", error, null, 0, null));
  }
}

async function get_task_by_id(req, res) {
  const id = req.params.id;
  try {
    const { query_sql, affectedRows, data } =
      await functionsModel.get_task_by_id(id);
    res.json(
      response(
        "success",
        "got the specific task with success",
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
  get_task_by_id,
  get_tasks,
  
};
