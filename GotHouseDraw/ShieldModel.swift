//
//  ShieldModel.swift
//  GotHouseDraw
//
//  Created by user on 10/02/2021.
//

import Foundation

class ShieldModel {
    
    func getShields(_ numberOfPlayers: Int) -> [Shield] {
        
        // Declare an empty array to store numbers that we've generated
        var generatedNumbers = [Int]()
        
        // Declare an empty array
        var generatedShields = [Shield]()
        
        var shieldsNumber = 1
        
        // Randomly generate numberOfPlayers
        while generatedNumbers.count < numberOfPlayers {
            
            let shield = Shield()
            
            // Set their image names
            shield.imageName = "shield\(shieldsNumber)"
            
            // Add them to the array
            generatedShields += [shield]
            
            // Add this number to the list of generated numbers
            generatedNumbers.append(shieldsNumber)
            
            //Next number
            shieldsNumber += 1
            
        }
        
        // Randomize the shiels within the array
        generatedShields.shuffle()
        
        // Return the array
        return generatedShields
    }
    
}
