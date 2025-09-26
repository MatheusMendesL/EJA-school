const express = require("express");
const functionsControllers = require("../controllers/user_controller");
const jwt = require("../middlewares/jwt");
const router = express.Router();

// rotas que pegam com base no que o controller manda

router.get("/get_user_data/:id", jwt, functionsControllers.get_user);
router.post("/signup", functionsControllers.signup);
router.post("/login", functionsControllers.login);
router.get("/xp/:id", jwt, functionsControllers.get_level_xp);
router.put("/update_level/:id", jwt, functionsControllers.update_xp_level);
router.put("/update_xp/:id/:xp", jwt, functionsControllers.update_xp);

module.exports = router;
