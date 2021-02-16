//
//  DrawViewController.swift
//  GotHouseDraw
//
//  Created by user on 10/02/2021.
//

import UIKit

class DrawViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Number of Players from ViewController, default number is 3
    var numOfPlayers: Int = 3
    
    let model = ShieldModel()
    var shieldArray = [Shield]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //Give number of players from 1. ViewController as argument for getShields
        shieldArray = model.getShields(numOfPlayers)

        // Set the view controller as the datasource and delegate of the collection view
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    // MARK: - Collection View Delegate Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //Return number of shields
        return shieldArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShieldCell", for: indexPath) as! ShieldCollectionViewCell
        
        // Return it
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        // Configure the state of the cell based on the properties of the Shield that it represents
        let shieldCell = cell as? ShieldCollectionViewCell
        
        let shield = shieldArray[indexPath.row]
        
        // Finish configuring the cell
        shieldCell?.configureCell(shield: shield)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
    
        // Get a reference to the cell that was tapped
        let cell = collectionView.cellForItem(at: indexPath) as? ShieldCollectionViewCell
         
        // Flip the shield up
        cell?.flipUp()

    }

}
