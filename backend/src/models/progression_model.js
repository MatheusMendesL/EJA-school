const conn = require("../config/database");

function get_progress(get_data) {
    return new Promise((resolve, reject) => {
        const query_sql = 'SELECT * FROM user_progress WHERE id_user = ? AND matter_id = ?'

        conn.query(query_sql, [get_data.id_user, get_data.matter_id], (error, results) => {
            if (error) return reject(error);
            resolve({
                query_sql,
                affectedRows: results.length,
                data: results,
            });
        })
    })
}

function get_progress_id(data_lesson) {
    return new Promise((resolve, reject) => {
        const query_sql = 'SELECT * FROM user_progress WHERE id_user = ? AND matter_id = ? AND lesson_id = ?'

        conn.query(query_sql, [data_lesson.user, data_lesson.matter, data_lesson.lesson], (error, results) => {
            if (error) return reject(error);
            resolve({
                query_sql,
                affectedRows: results.length,
                data: results,
            });
        })
    })
}

function add_progress(ids) {
    return new Promise((resolve, reject) => {
        const query_sql = 'SELECT * FROM user_progress WHERE id_user = ? AND lesson_id = ?'

        conn.query(query_sql, [ids.user, ids.lesson], (error, results) => {
            if (error) return reject(new Error(error));
            if (results.length > 0) {
                return resolve({
                    query_sql,
                    affectedRows: 0,
                    data: "ja completou"
                });
            }

            const query_sql = 'INSERT INTO user_progress(id_user, lesson_id, matter_id, completed) VALUES (?, ?, ?, 1)'
            conn.query(query_sql, [ids.user, ids.lesson, ids.matter], (error, results) => {
                if (error) return reject(new Error(error))

                resolve({
                    query_sql,
                    affectedRows: results.affectedRows,
                    data: results,
                });

            })
        })
    })
}


module.exports = {
    get_progress,
    get_progress_id,
    add_progress
}