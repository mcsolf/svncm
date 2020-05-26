require('dotenv/config');
const bodyParser = require('body-parser')
//const { verifyJWT } = require('./verifyJWT')
var http = require('http')
cors = require('cors')
const { Pool } = require('pg')
const express = require('express')
const app = express();
var cookieParser = require('cookie-parser')
var logger = require('morgan')
const helmet = require('helmet')
var jwt = require('jsonwebtoken')
const { conn } = require('./db')
app.options('*', cors())

app.use(bodyParser.json())

app.use(function(req, res, next) {  
  res.header("Access-Control-Allow-Origin", "*");  
  //res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
  next();
})


app.post('/login', (req, res) => {
  var dbclient = {}
  try {
    dbclient = req.headers['x-forwarded-host'].split('.')[0]
  }  
  catch {
    dbclient = req.headers.host.split('.')[0]
  }  
  console.log(dbclient) 
  const pool = new Pool(conn(dbclient))
  const usuario = String(req.body.user).toLowerCase()
  const senha = req.body.pwd
  var qry = 'select idempresa, id, nome from usuario where lower(login)=$1 and senha=$2'
  const valor = [usuario, senha]
  pool
    .query(qry, valor)
    .then(con => {      
      const dados = con.rows[0]
      if (dados) {
        const id = dados.id
        const nome = dados.nome
        const idempresa = dados.idempresa        
        var token = jwt.sign({ id, nome, idempresa, dbclient }, process.env.SECRET, {
          expiresIn: 3200
        })
        qry = `select id,fantasia, cnpj, razao,codregtrib from empresa where id=${idempresa}`
        pool
          .query(qry)
          .then(con => {
            const empresa = con.rows[0]
            res.status(200).send({ auth: true, token: token, empresa, usuario:nome})
          })
          .catch(err=>{
            res.status(401).send({ auth: false, erro: 'Erro no cadastro da empresa. Ligue suporte!' })
          })
      }
      else {
        res.status(401).send({ auth: false, erro: 'Login inválido!' })
      }
    })
    .catch(err => {
      res.status(500).send({ auth: false, erro: 'Subdomínio não existe.' })
      console.log('401 na solicitacao do token. db nao encontrado')
    })
})

/*
app.use('/grupoproduto', require('./grupoproduto'));
app.use('/produto', require('./produto'));
app.use('/cliente', require('./cliente'));
app.use('/finalizadora', require('./finalizadora'));
app.use('/usuario', require('./usuario'))
app.use('/dashboard', require('./dashboard'));
app.use('/unidades', require('./unidade'));
*/
app.use('/ncm', require('./ncm'));
/*
app.use('/cest', require('./cest'));
app.use('/ibge', require('./ibge'));
app.use('/planoconta', require('./planoconta'));
app.use('/venda', require('./venda'));
app.use('/configcaixa', require('./configcaixa'));
app.use('/confignfce', require('./confignfce'));
app.use('/alterarsenhausuario', require('./alterarsenhausuario'));
app.use('/cargacloud', require('./cargacloud'));
app.use('/contas', require('./contas'));
app.use('/certificadoa1', require('./certificadoa1'));
app.use('/nfe', require('./nfe'));
app.use('/confignfe', require('./confignfe'));
app.use('/empresa', require('./empresa'));
*/

app.use(logger('dev'));
app.use(helmet());
app.use(express.json());
app.use(cookieParser());
var server = http.createServer(app);
server.listen(process.env.PORT, ()=> console.log('Servidor ON. Port:', process.env.PORT));



