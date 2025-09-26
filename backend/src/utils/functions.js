function response(status, message, query, affected_rows, data) {
    return {
        status: status, 
        message: message, 
        query: query, 
        affected_rows: affected_rows, 
        timestamp: new Date().toISOString(),
        data: data
    }
}

module.exports = {
    response
}