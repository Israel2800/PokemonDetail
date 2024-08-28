//
//  PokemonDetailViewController.swift
//  PokemonDetail
//
//  Created by Israel Aguilar on 8/26/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var receivedPokemon : Pokemon?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeModal(_ sender: UIButton) {
            self.dismiss(animated: true, completion: nil)
        }
}

