const express = require('express')
const functionsControllers = require('../controllers/matter_controller')
const jwt = require('../middlewares/jwt')
const router = express.Router()

router.get('/get_matters', jwt, functionsControllers.get_matters)
router.get('/get_matter_id/:id', jwt, functionsControllers.get_matter_id)

module.exports = router