const express = require("express");
const functionsControllers = require("../controllers/task_controller");
const jwt = require("../middlewares/jwt");
const router = express.Router();

router.get("/lesson/:lesson_id", jwt, functionsControllers.get_tasks);
router.get("/:id", jwt, functionsControllers.get_task_by_id);

module.exports = router;
