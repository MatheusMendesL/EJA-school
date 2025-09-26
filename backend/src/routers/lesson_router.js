const express = require("express");
const functionsControllers = require("../controllers/lesson_controller");
const jwt = require("../middlewares/jwt");
const router = express.Router();

router.get(
  "/matter/:matter_id",
  jwt,
  functionsControllers.get_lesson_by_matter
);
router.get("/:id", jwt, functionsControllers.get_lesson);
router.get("/level/:level", jwt, functionsControllers.get_lesson_by_level);
module.exports =  router ;
