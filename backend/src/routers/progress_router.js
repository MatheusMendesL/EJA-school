const express = require("express");
const functionsControllers = require("../controllers/progression_controller");
const jwt = require("../middlewares/jwt");
const router = express.Router();

router.get('/:matter/:id', jwt, functionsControllers.get_progress_by_matter)
router.get('/:matter/:lesson_id/:id', jwt, functionsControllers.get_progress_by_matter_id)
router.post('/add', jwt, functionsControllers.add_progress)

module.exports = router;
