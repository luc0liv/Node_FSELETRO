const express = require('express')
const app = express()
const connection = require('./conexao.js')
const cors = require('cors')


app.use(express.json());
app.use(cors());

app.get('/produtos', (req,res) => {
   
    connection.query('select * from produtos', (error,result) => {
        res.json(result)
    })
})

app.post('/contato', (req, res) => {
    var mensagem = []
    
    mensagem.push ({
            nome : req.body.nome,
            telefone: req.body.telefone,
            email : req.body.email,
            msg : req.body.msg,
            data: req.body.data,
           
        })

    connection.query('insert into contato set?', mensagem, ()=> {
        res.json({log : 'Mensagem enviada com sucesso'})
    })
})


app.listen(4000);
console.log("Servidor ativo");