//
//  PokemonDataManager.swift
//  PokemonDetail
//
//  Created by Israel Aguilar on 8/26/24.
//

import Foundation

class PokemonDataManager {
    
    // MARK: Properties
    private var pokemons : [Pokemon] = []
    
    // MARK: data source array
        let pokemonsArray = [
            ["image":"0", "name": "Warturtle"],
            ["image":"1", "name": "Bulbasaur"],
            ["image":"2", "name": "Blastoise"],
            ["image":"3", "name":"Butterfree"],
            ["image":"4", "name":"Ivysaur"],
            ["image":"5", "name":"Jigglypuff"],
            ["image":"6", "name":"Charmander"],
            ["image":"7", "name":"Meowth"],
            ["image":"8", "name":"Alakazam"],
            ["image":"9", "name":"Pidgey"],
            ["image":"10", "name":"Raichu"],
            ["image":"11", "name":"Rattata"],
            ["image":"12", "name":"Vaporeon"],
            ["image":"13", "name":"Jynx"],
            ["image":"14", "name":"Venusaur"],
            ["image":"15", "name":"Vulpix"],
            ["image":"16", "name":"Slowbro"],
            ["image":"17", "name":"Dewgong"],
            ["image":"18", "name":"Spearow"],
            ["image":"19", "name":"Wigglytuff"],
            ["image":"20", "name":"Scyther"],
            ["image":"21", "name":"Golduck"],
            ["image":"22", "name":"Lapras"],
            ["image":"23", "name":"Sandshrew"]
            ]
        
    let pokemonsArray2 = [
        ["image": "0", "name": "Warturtle", "moves": ["Water Gun", "Bite", "Rapid Spin", "Protect"], "ability": "Torrent"],
        ["image": "1", "name": "Bulbasaur", "moves": ["Vine Whip", "Tackle", "Growl", "Leech Seed"], "ability": "Overgrow"],
        ["image": "2", "name": "Blastoise", "moves": ["Hydro Pump", "Skull Bash", "Iron Defense", "Rain Dance"], "ability": "Torrent"],
        ["image": "3", "name": "Butterfree", "moves": ["Gust", "Confusion", "Poison Powder", "Stun Spore"], "ability": "Compound Eyes"],
        ["image": "4", "name": "Ivysaur", "moves": ["Razor Leaf", "Sleep Powder", "Solar Beam", "Sludge Bomb"], "ability": "Overgrow"],
        ["image": "5", "name": "Jigglypuff", "moves": ["Sing", "Pound", "Rollout", "Body Slam"], "ability": "Cute Charm"],
        ["image": "6", "name": "Charmander", "moves": ["Ember", "Scratch", "Growl", "Smokescreen"], "ability": "Blaze"],
        ["image": "7", "name": "Meowth", "moves": ["Scratch", "Bite", "Pay Day", "Fury Swipes"], "ability": "Pickup"],
        ["image": "8", "name": "Alakazam", "moves": ["Psybeam", "Psychic", "Recover", "Future Sight"], "ability": "Synchronize"],
        ["image": "9", "name": "Pidgey", "moves": ["Gust", "Quick Attack", "Whirlwind", "Wing Attack"], "ability": "Keen Eye"],
        ["image": "10", "name": "Raichu", "moves": ["Thunderbolt", "Quick Attack", "Iron Tail", "Electro Ball"], "ability": "Static"],
        ["image": "11", "name": "Rattata", "moves": ["Tackle", "Tail Whip", "Quick Attack", "Hyper Fang"], "ability": "Run Away"],
        ["image": "12", "name": "Vaporeon", "moves": ["Water Gun", "Quick Attack", "Aurora Beam", "Hydro Pump"], "ability": "Water Absorb"],
        ["image": "13", "name": "Jynx", "moves": ["Ice Punch", "Lovely Kiss", "Psybeam", "Blizzard"], "ability": "Oblivious"],
        ["image": "14", "name": "Venusaur", "moves": ["Solar Beam", "Sludge Bomb", "Earthquake", "Frenzy Plant"], "ability": "Overgrow"],
        ["image": "15", "name": "Vulpix", "moves": ["Ember", "Quick Attack", "Confuse Ray", "Flamethrower"], "ability": "Flash Fire"],
        ["image": "16", "name": "Slowbro", "moves": ["Water Gun", "Confusion", "Disable", "Amnesia"], "ability": "Oblivious"],
        ["image": "17", "name": "Dewgong", "moves": ["Aurora Beam", "Rest", "Ice Beam", "Surf"], "ability": "Thick Fat"],
        ["image": "18", "name": "Spearow", "moves": ["Peck", "Growl", "Leer", "Fury Attack"], "ability": "Keen Eye"],
        ["image": "19", "name": "Wigglytuff", "moves": ["Sing", "Double-Edge", "Hyper Voice", "Body Slam"], "ability": "Cute Charm"],
        ["image": "20", "name": "Scyther", "moves": ["Slash", "Wing Attack", "Double Team", "Swords Dance"], "ability": "Swarm"],
        ["image": "21", "name": "Golduck", "moves": ["Water Gun", "Confusion", "Fury Swipes", "Hydro Pump"], "ability": "Damp"],
        ["image": "22", "name": "Lapras", "moves": ["Water Gun", "Ice Beam", "Body Slam", "Hydro Pump"], "ability": "Water Absorb"],
        ["image": "23", "name": "Sandshrew", "moves": ["Scratch", "Defense Curl", "Sand Attack", "Slash"], "ability": "Sand Veil"]
    ]
    // MARK: Methods
    func fetch() {
        for pokemon in pokemonsArray2 {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        pokemons.count
    }
    
}

