const express = require('express')
const app= express()
const bodyParser = require('body-parser')
const pokeSearch = require('./src/functions/pokeSearch')
const typeSearch = require ('./src/functions/typeSearch')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))


app.set('view engine','ejs')
app.set('views','./src/views')


app.get("/", (req,res)=>{
    res.render('index')
})

app.post("/pokeSearch", async(req,res)=>{
    const { pokemon }  = req.body
    

    const resultado = await pokeSearch(pokemon)

    res.render('resultado', {dado:resultado})
    console.log(resultado)
})

app.post("/typeSearch", async(req,res)=>{
    const { pokeNumber }  = req.body

    const resultado = await typeSearch(pokeNumber)

    res.render('resultado', {dado:resultado})
    console.log(resultado)
    
})

app.listen(4000)