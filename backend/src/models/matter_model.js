const conn = require("../config/database");

function get_matter(){
    return new Promise((resolve, reject) => {
        const query_sql = 'SELECT * FROM matter'

        conn.query(query_sql, (error, results) => {
            if(error) return reject(new Error('erro'))

            resolve({
                query_sql,
                affectedRows: results.length,
                data: results
            })
        })
    })
}

function get_matter_id(id){
    return new Promise((resolve, reject) => {
        const query_sql = 'SELECT * FROM matter WHERE id_matter = ?'

        conn.query(query_sql, [id], (error, results) => {
            if(error) return reject(new Error('erro'))

            resolve({
                query_sql,
                affectedRows: results.length,
                data: results
            })
        })
    })
}

module.exports = {
    get_matter,
    get_matter_id
}