//
//  PokemonClass.swift
//  iOS_Week_1
//
//  Created by Artun Erol on 24.09.2021.
//

import Foundation

class Pokemon {
    
    var pokemons = [PokemonStruct(name: "Gengar"), PokemonStruct(name: "Pikachu"),PokemonStruct(name: "None")]
    
    func isTherePokemon() -> String? {
        let randomPoke = pokemons.randomElement()?.name
        
        switch randomPoke {
        case "Gengar":
            return randomPoke
        case "Pikachu":
            return randomPoke
        case "None":
            return randomPoke
        case .none:
            break
        case .some(_):
            break
        }
        return String()
    }
    
   
}
