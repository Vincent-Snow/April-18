//
//  CardController.swift
//  DisplayOneCard
//
//  Created by mac-admin on 4/18/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class CardController {
    
    static func drawCard(deckID: String, completion: (card: Card?) -> Void) {
        let url = "http://deckofcardsapi.com/api/deck/\(deckID)/draw/?count=1"
        
        NetworkController.dataAtURL(url) { (success, data) in
            guard let data = data,
                json = NetworkController.serializeDataAsJson(data),
                cardArray = json["cards"] as? [[String: AnyObject]],
            cardDictionary = cardArray.first
                where success else {
                    completion(card: nil)
                    return
            }
            let card = Card(dictionary: cardDictionary)
            completion(card: card)
        }
        
    }
    
    static func getDeck(completion: (deck: Deck?) -> Void ) {
       let url = "http://deckofcardsapi.com/api/deck/new/"
        NetworkController.dataAtURL(url) { (success, data) in
            guard let data = data,
            json = NetworkController.serializeDataAsJson(data)
                where success else {
                    completion(deck: nil)
                    return
            }
            let deck = Deck(dictionary: json)
            print(deck?.deckID)
            completion(deck: deck)
    
        }
    }
    
  
}

