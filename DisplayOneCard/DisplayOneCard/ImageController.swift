//
//  ImageController.swift
//  DisplayOneCard
//
//  Created by mac-admin on 4/18/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation
import UIKit

class ImageController {
    
    static func imageAtURl(url: String, completion: (image: UIImage?) -> Void) {
        NetworkController.dataAtURL(url) { (success, data) in
            guard let data = data where success else {
                completion(image: nil)
                return
            }
            completion(image: UIImage(data: data))
        }
            
        
        
    }
    
    
}