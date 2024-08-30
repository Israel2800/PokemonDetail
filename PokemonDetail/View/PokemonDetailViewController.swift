//
//  PokemonDetailViewController.swift
//  PokemonDetail
//
//  Created by Israel Aguilar on 8/26/24.
// Modified by Juan Jose
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var receivedPokemon : Pokemon?

    
    
    @IBOutlet var pokeimg: UIImageView!
    
    @IBOutlet var pokedescrip: UITextView!
    
    @IBOutlet var poketipo: UILabel!
    
    @IBOutlet var pokeability: UILabel!
    
    @IBOutlet var pokemov1: UILabel!
    
    @IBOutlet var pokemov2: UILabel!
    
    @IBOutlet var pokemov3: UILabel!
    
    @IBOutlet var pokemov4: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokeimg.image = UIImage(named: receivedPokemon?.image ?? "1024")
        pokedescrip.text = receivedPokemon?.description ?? "no hay descripcion"
        
        let types = receivedPokemon?.types.joined(separator: " y ")
        poketipo.text = (types ?? "no hay tipos")
        
        
        
        
        pokeability.text = "\(receivedPokemon?.ability ?? "ninguna") "
        
        
        let moves = receivedPokemon?.moves
        pokemov1.text = moves![0]
        pokemov2.text = moves![1]
        pokemov3.text = moves![2]
        pokemov4.text = moves![3]
        
    }
    
    @IBAction func closeModal(_ sender: UIButton) {
            self.dismiss(animated: true, completion: nil)
        }
}

