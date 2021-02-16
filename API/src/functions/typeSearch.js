const fetch = require("node-fetch");

module.exports = async function typeSearch(pokeNumber){
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${pokeNumber}`)
    const json = await response.json()
    return json 
}