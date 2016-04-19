//
//  Card.swift
//  DisplayOneCard
//
//  Created by mac-admin on 4/18/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Card {
    
    private let kImage = "image"
    private let kValue = "value"
    private let kSuit = "suit"
    
    let imageEndpoint: String
    let value: String
    let suit: String
    
    
    init(imageEndpoint: String, value: String, suit: String) {
        self.imageEndpoint = imageEndpoint
        self.value = value
        self.suit = suit
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let imageEndpoint = dictionary[kImage] as? String,
            value = dictionary[kValue] as? String,
            suit = dictionary[kSuit] as? String else {return nil}
        
        self.imageEndpoint = imageEndpoint
        self.value = value
        self.suit = suit
        
    }
}