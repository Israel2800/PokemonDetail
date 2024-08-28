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
    
    
    let pokemonsArray3 = [
        ["image": "0", "name": "Wartortle", "moves": ["Pistola Agua", "Mordisco", "Giro Rápido", "Protección"], "ability": "Torrente", "description": "Se esconde en el agua para acechar a su presa. Cuando nada rápidamente, agita el agua con su cola.", "types": ["Agua"]],
        ["image": "1", "name": "Bulbasaur", "moves": ["Látigo Cepa", "Placaje", "Gruñido", "Drenadoras"], "ability": "Espesura", "description": "Puede sobrevivir mucho tiempo sin comer. La semilla de su espalda almacena energía.", "types": ["Planta", "Veneno"]],
        ["image": "2", "name": "Blastoise", "moves": ["Hidrobomba", "Cabezazo", "Defensa Férrea", "Danza Lluvia"], "ability": "Torrente", "description": "Lanza chorros de agua a una presión increíblemente alta para perforar acero.", "types": ["Agua"]],
        ["image": "3", "name": "Butterfree", "moves": ["Tornado", "Confusión", "Polvo Veneno", "Paralizador"], "ability": "Ojo Compuesto", "description": "Sus alas están cubiertas de polvo escamoso. Si se le toca, se quedará pegado a los dedos.", "types": ["Bicho", "Volador"]],
        ["image": "4", "name": "Ivysaur", "moves": ["Hoja Afilada", "Somnífero", "Rayo Solar", "Bomba Lodo"], "ability": "Espesura", "description": "Cuando el bulbo de su espalda crece, parece que está a punto de florecer.", "types": ["Planta", "Veneno"]],
        ["image": "5", "name": "Jigglypuff", "moves": ["Canto", "Destructor", "Rodar", "Golpe Cuerpo"], "ability": "Gran Encanto", "description": "Su canto puede hacer dormir a cualquiera que lo escuche. Usa este poder para protegerse.", "types": ["Normal", "Hada"]],
        ["image": "6", "name": "Charmander", "moves": ["Ascuas", "Arañazo", "Gruñido", "Pantalla de Humo"], "ability": "Mar Llamas", "description": "Prefiere las cosas calientes. Dicen que cuando llueve, sale vapor de la punta de su cola.", "types": ["Fuego"]],
        ["image": "7", "name": "Meowth", "moves": ["Arañazo", "Mordisco", "Día de Pago", "Golpes Furia"], "ability": "Recogida", "description": "Le encanta todo lo que brilla. Se pasea por la noche para buscar objetos perdidos.", "types": ["Normal"]],
        ["image": "8", "name": "Alakazam", "moves": ["Psicorrayo", "Psíquico", "Recuperación", "Premonición"], "ability": "Sincronía", "description": "Tiene un CI de 5000. Recuerda todo lo que ha ocurrido en el mundo.", "types": ["Psíquico"]],
        ["image": "9", "name": "Pidgey", "moves": ["Tornado", "Ataque Rápido", "Remolino", "Ataque Ala"], "ability": "Vista Lince", "description": "Es muy dócil y prefiere evitar el conflicto. Si es atacado, puede lanzar arena para cegar a su enemigo.", "types": ["Normal", "Volador"]],
        ["image": "10", "name": "Raichu", "moves": ["Rayo", "Ataque Rápido", "Cola Férrea", "Bola Voltio"], "ability": "Electricidad Estática", "description": "Si las bolsas de sus mejillas se cargan, puede liberar una descarga eléctrica de 100,000 voltios.", "types": ["Eléctrico"]],
        ["image": "11", "name": "Rattata", "moves": ["Placaje", "Látigo", "Ataque Rápido", "Hipercolmillo"], "ability": "Fuga", "description": "Es muy ágil y puede morder cualquier cosa con sus afilados colmillos.", "types": ["Normal"]],
        ["image": "12", "name": "Vaporeon", "moves": ["Pistola Agua", "Ataque Rápido", "Rayo Aurora", "Hidrobomba"], "ability": "Absorbe Agua", "description": "Su estructura celular es similar a la del agua, lo que le permite derretirse en el agua.", "types": ["Agua"]],
        ["image": "13", "name": "Jynx", "moves": ["Puño Hielo", "Beso Amoroso", "Psicorrayo", "Ventisca"], "ability": "Despiste", "description": "Baila de una manera que hipnotiza a sus enemigos. Luego les da un beso helado.", "types": ["Hielo", "Psíquico"]],
        ["image": "14", "name": "Venusaur", "moves": ["Rayo Solar", "Bomba Lodo", "Terremoto", "Planta Feroz"], "ability": "Espesura", "description": "La planta florece cuando está absorbiendo energía solar. Se mantiene en movimiento para buscar la luz del sol.", "types": ["Planta", "Veneno"]],
            ["image": "15", "name": "Vulpix", "moves": ["Ascuas", "Ataque Rápido", "Rayo Confuso", "Lanzallamas"], "ability": "Absorbe Fuego", "description": "Cuando nace, tiene una sola cola blanca. La cola se divide en más colas a medida que crece.", "types": ["Fuego"]],
            ["image": "16", "name": "Slowbro", "moves": ["Pistola Agua", "Confusión", "Anulación", "Amnesia"], "ability": "Despiste", "description": "Es tan lento que no se da cuenta cuando es mordido por un Shellder. La mordida lo hace más inteligente.", "types": ["Agua", "Psíquico"]],
            ["image": "17", "name": "Dewgong", "moves": ["Rayo Aurora", "Descanso", "Rayo Hielo", "Surf"], "ability": "Grasa", "description": "Nada en aguas heladas. Su gruesa capa de grasa lo protege del frío.", "types": ["Agua", "Hielo"]],
            ["image": "18", "name": "Spearow", "moves": ["Picotazo", "Gruñido", "Malicioso", "Furia"], "ability": "Vista Lince", "description": "Es muy territorial. Ataca a cualquiera que se acerque a su nido.", "types": ["Normal", "Volador"]],
            ["image": "19", "name": "Wigglytuff", "moves": ["Canto", "Doble Filo", "Vozarrón", "Golpe Cuerpo"], "ability": "Gran Encanto", "description": "Su cuerpo es muy elástico. Puede inflarse hasta varias veces su tamaño original.", "types": ["Normal", "Hada"]],
            ["image": "20", "name": "Scyther", "moves": ["Cuchillada", "Ataque Ala", "Doble Equipo", "Danza Espada"], "ability": "Enjambre", "description": "Sus cuchillas son tan afiladas que pueden cortar un tronco de un solo golpe.", "types": ["Bicho", "Volador"]],
            ["image": "21", "name": "Golduck", "moves": ["Pistola Agua", "Confusión", "Golpes Furia", "Hidrobomba"], "ability": "Humedad", "description": "Nada elegantemente como un nadador profesional. Es muy rápido en el agua.", "types": ["Agua"]],
            ["image": "22", "name": "Lapras", "moves": ["Pistola Agua", "Rayo Hielo", "Golpe Cuerpo", "Hidrobomba"], "ability": "Absorbe Agua", "description": "Es muy inteligente y puede entender el lenguaje humano. Le gusta llevar a la gente sobre su espalda.", "types": ["Agua", "Hielo"]],
            ["image": "23", "name": "Sandshrew", "moves": ["Arañazo", "Rizo Defensa", "Ataque Arena", "Cuchillada"], "ability": "Velo Arena", "description": "Se entierra en la arena para protegerse del calor. Su cuerpo es muy seco y resistente.", "types": ["Tierra"]]    ]
    
    
    // MARK: Methods modificados
    func fetch() {
        for pokemon in pokemonsArray3 {
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

