const functionsModel = require("../models/matter_model");
const { response } = require("../utils/functions");

async function get_matters(req, res){
    try{
        const { query_sql, affectedRows, data } = await functionsModel.get_matter()
        res.json(response('success', 'Got the matters with success', query_sql, affectedRows, data))
    } catch(error){
        res.status(500).json(response('error', error, null, 0, null))
    }
}

async function get_matter_id(req, res){
    const id = req.params.id

    try{
        const { query_sql, affectedRows, data } = await functionsModel.get_matter_id(id)
        res.json(response('success', 'Got the specific matter with success', query_sql, affectedRows, data))
    } catch(error){
        res.status(500).json(response('error', error, null, 0, null))
    }
}

module.exports = {
    get_matters,
    get_matter_id
}