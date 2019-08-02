//
//  GrassViewController.swift
//  Pokedex
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class GrassViewController: UIViewController {

    @IBAction func showMessage(_ sender: Any) {
        var grassMessage = "Grass not working"
        var monWasFound = false
        
        let randNum = Int.random(in: 1 ... 5)
        
        if (randNum == 1) {
            grassMessage = "You found a Pokemon!"
            monWasFound = true
        } else if (randNum == 2) {
            grassMessage = "You found a useless potato."
        } else {
            grassMessage = "No Pokemon here."
        }
        let alertController = UIAlertController(title: "Grass Patch", message: grassMessage, preferredStyle: .alert)
        
        var alertJawn = UIAlertAction(title: "OK", style: .default, handler: {(action) -> Void in
            self.performSegue(withIdentifier: "FoundPokemonSegue", sender: self)})
        if (monWasFound == false){
            alertJawn = UIAlertAction(title: "OK", style: .default, handler: nil)
        }
        alertController.addAction(alertJawn)
        
        self.present(alertController, animated: true, completion: nil)
    }

        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
}
            
            
        
            
            // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


