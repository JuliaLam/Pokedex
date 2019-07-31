//
//  ViewController.swift
//  Pokedex
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bulbasaur: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BoxForest")!)
        // Do any additional setup after loading the view.
        var UITapRecognizer = UITapGestureRecognizer(target:self, action: "tappedImage:")
        UITapRecognizer.delegate = self as! UIGestureRecognizerDelegate
        self.bulbasaur.addGestureRecognizer(UITapRecognizer)
        self.bulbasaur.isUserInteractionEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   // func tappedImage(sender: AnyObject) {
}



