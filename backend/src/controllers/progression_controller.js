const functionsModel = require("../models/progression_model");
const { response } = require("../utils/functions");

async function get_progress_by_matter(req, res) {
    const matter_id = req.params.matter
    const id_user = req.params.id

    const get_data = {
        matter_id,
        id_user
    }

    try {
        const { query_sql, affectedRows, data } = await functionsModel.get_progress(get_data)
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

async function get_progress_by_matter_id(req, res) {
    const data_id = {
        'matter': req.params.matter,
        'lesson': req.params.lesson_id,
        'user': req.params.id
    }

    try {
        const { query_sql, affectedRows, data } = await functionsModel.get_progress_id(data_id)
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

async function add_progress(req, res){

    const {user, lesson, matter} = req.body
    const data_id = {
        matter: matter,
        lesson: lesson,
        user: user
    }

    try {
        const { query_sql, affectedRows, data } = await functionsModel.add_progress(data_id)
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
        console.error("ERRO NO ADD_PROGRESS:", error);
        res.status(500).json(response("error", error, null, 0, null));
    }

}

module.exports = {
    get_progress_by_matter,
    get_progress_by_matter_id,
    add_progress
}