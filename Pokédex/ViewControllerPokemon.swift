//
//  ViewControllerPokemon.swift
//  Pokedex
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

var pokemonList = ["Bulbasaur", "Mudkip", "Ninetales", "Pichu", "Phanpy", "Munna", "Mimikyu", "Scraggy", "Scizor", "Ducklett", "Mawile", "Snorunt", "Palkia", "Swirlix"]

func whatPokemonFound() -> String {
    let randPokemonIndex = Int.random(in: 0 ... 13)
    return pokemonList[randPokemonIndex]
}

var PokeDict = ["Bulbasaur": "250px-001Bulbasaur",
                "Mudkip": "580b57fcd9996e24bc43c320",
                "Ninetales": "038",
                "Pichu": "172",
                "Phanpy": "231",
                "Munna": "517",
                "Mimikyu": "778",
                "Scraggy": "559",
                "Scizor": "212",
                "Ducklett": "580",
                "Mawile": "303",
                "Snorunt": "361",
                "Palkia": "484",
                "Swirlix": "684"]

var foundPokemonList = [String]()
var foundPokemonPokeballsList = [String]()


class ViewControllerPokemon: UIViewController {

    @IBOutlet weak var congratsText: UILabel!
    @IBOutlet weak var picPokemonFound: UIImageView!
  
    @IBOutlet weak var foundPokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        let pokemonFound = whatPokemonFound()
        congratsText.text = "You found a \(pokemonFound)!"
        picPokemonFound.image =  UIImage(named: PokeDict[pokemonFound]!)
        
        foundPokemonPokeballsList.append("🔴")
        foundPokemonList.append(pokemonFound)
        foundPokeLabel.text = "\(foundPokemonPokeballsList)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
