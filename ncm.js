var express = require('express');
var router = express.Router();
// const { verifyJWT } = require('./verifyJWT');
const { Pool } = require('pg');
const { conn } = require('./db');
/*

router.get('/', verifyJWT, (req, res, next) => {    
    const { dbclient}  = req.user
    const pool  = new Pool (conn(dbclient))    
    const qry = `select ncm, descricao from ncm`
    pool
    .query(qry)
    .then(con => {    
      const dados=con.rows
      res.status(200).send({ auth: true, result: true, dados })
    })
    .catch(err => {
      const e = err.message
      res.status(500).send({ auth: true, result: false, erro: e })
    })
})

router.get('/:uid', verifyJWT, (req, res, next) => {    
  const { dbclient}  = req.user
  const pool  = new Pool (conn(dbclient))    
  const qry = `select ncm, descricao from ncm where ncm=${req.params.uid}`
  pool
  .query(qry)
  .then(con => {    
    const dados=con.rows
    res.status(200).send({ auth: true, result: true, dados })
  })
  .catch(err => {
    const e = err.message
    res.status(500).send({ auth: true, result: false, erro: e })
  })
})

router.get('/tipoproduto/:uid', verifyJWT, (req, res, next) => {    
  const { dbclient}  = req.user
  const pool  = new Pool (conn(dbclient))  
  const pesq = req.params.uid.split(' ')  
  
  var qry = `select id, ncm, produto as descricao from ncm`
   // where produto like upper('%${req.params.uid}%')

  function montaConsulta(element, index, array) {
    if (index===0){
      qry += ` where produto like upper('%${element.trim()}%')`
    } else {
      qry += ` and produto like upper('%${element.trim()}%')`
    }
  }
  pesq.forEach(montaConsulta)
  pool
  .query(qry)
  .then(con => {    
    const dados=con.rows
    res.status(200).send({ auth: true, result: true, dados })
  })
  .catch(err => {
    const e = err.message
    res.status(500).send({ auth: true, result: false, erro: e })
  })
})

router.get('/buscacompleta/:uid', verifyJWT, (req, res, next) => {    
  const { dbclient}  = req.user
  const pool  = new Pool (conn(dbclient)) 
  const id = req.params.uid
  const qry = `select * from ncm where id=${id}`
  pool
  .query(qry)
  .then(con => {    
    const dados=con.rows[0]
    res.status(200).send({ auth: true, result: true, dados })
  })
  .catch(err => {
    const e = err.message
    res.status(500).send({ auth: true, result: false, erro: e })
  })
})
*/
router.get('/listacompleta', (req, res, next) => {    
 // const { dbclient}  = req.user
  const pool  = new Pool (conn()); 
  const qry = `select * from ncm`
  pool
  .query(qry)
  .then(con => {    
    const dados=con.rows;
    res.status(200).send({ auth: true, result: true, dados })
  })
  .catch(err => {
    const e = err.message
    res.status(500).send({ auth: true, result: false, erro: e })
  })
})

  
module.exports = router