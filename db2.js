const conn = function(dbclient){
    return {
    user: process.env.USER_DB,
    password: process.env.PASS_DB,
    host: 'localhost',
    database: dbclient,    
    port: 5432}
}

module.exports.conn2 = conn