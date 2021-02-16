//
//  ShieldCollectionViewCell.swift
//  GotHouseDraw
//
//  Created by user on 10/02/2021.
//

import UIKit

class ShieldCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var shield: Shield?
    
    func configureCell(shield:Shield){
        
        //Keep track of the shield this cell represents
        self.shield = shield
        
        //Set the front image to the image that represents the shield
        frontImageView.image = UIImage(named: shield.imageName)
        
        if shield.isFlipped == true{
            
            //Show the front image view
            flipUp(speed: 0)
        }
    }
    
    func flipUp(speed:TimeInterval = 0.3){
        
        //Flip up animation
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        
        //Set the status of the shield
        shield?.isFlipped = true
    }
}
