//
//  Deck.swift
//  DisplayOneCard
//
//  Created by mac-admin on 4/18/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Deck {
    
    let deckID: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let deckID = dictionary["deck_id"] as? String else {return nil}
        self.deckID = deckID
    }
}