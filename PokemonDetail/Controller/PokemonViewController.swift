//
//  PokemonViewController.swift
//  PokemonDetail
//
//  Created by Israel Aguilar on 8/26/24.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    
    let dataManager = PokemonDataManager()
    var selectedPokemon : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dataManager.fetch()
//        var i = 0
//        while i < dataManager.countPokemons() {
//            print(dataManager.getPokemon(at: i))
//            i += 1
//        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    
}

extension PokemonViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        
        // Set background color for selected cell
        let selectedRowBackground = UIView()
        selectedRowBackground.backgroundColor = UIColor.blue
        cell.selectedBackgroundView = selectedRowBackground
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Pokemon"
//    }
    
    // Function to return the images in the table
    
    // func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //    return UIImageView.init(image: UIImage(named: "Pokemon"))
    // }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

            //create container view
            let containerView = UIView()
            //      bgView.backgroundColor = UIColor.red.withAlphaComponent(CGFloat(0.1))
            
            //Create image view
            let imgHeader = UIImageView.init(image: UIImage(named: "Pokemon"))
            imgHeader.translatesAutoresizingMaskIntoConstraints = false
            
            // Create view for blur effect
            let bgView = UIVisualEffectView()
            bgView.translatesAutoresizingMaskIntoConstraints = false
            
            
            // Create blur effect
            let blurEffect = UIBlurEffect(style: .light)
            bgView.effect = blurEffect
            
            containerView.addSubview(bgView)
            containerView.addSubview(imgHeader)

            containerView.heightAnchor.constraint(equalToConstant: imgHeader.frame.height).isActive = true
            imgHeader.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
            
            NSLayoutConstraint.activate(
                [
                    bgView.topAnchor.constraint(equalTo: containerView.topAnchor)
                   , bgView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
                    ,bgView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
                   , bgView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
                ]
            )
            
            return containerView
            
    //          return UIImageView.init(image: UIImage(named: "Pokemon"))
        
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row: ", indexPath.row)
        selectedPokemon = dataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    
}
