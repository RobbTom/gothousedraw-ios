//
//  ViewController.swift
//  GotHouseDraw
//
//  Created by user on 10/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfPlayers: UILabel!
    
    var numOfPlayers = 3

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPlayers.text = Int(sender.value).description
        numOfPlayers = Int(Int(sender.value).description)!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        // Create a new variable to store the instance of the SecondViewController
        // set the variable from the SecondViewController that will receive the data
        let destinationVC = segue.destination as! DrawViewController
        destinationVC.numOfPlayers = numOfPlayers
    }

}

