//
//  ViewController.swift
//  StretchProblemGrandCentralDispatch
//
//  Created by mac-admin on 4/18/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        longRunnningThing()
    }

    func longRunnningThing() {
        let coolQueue = dispatch_queue_create("", nil)
        dispatch_async(coolQueue) {
            
            let randomNumber = Int(arc4random_uniform(1000))
            NSThread.sleepForTimeInterval(5)
            dispatch_async(dispatch_get_main_queue(), { 
                 self.label.text = String(randomNumber)
            })
           
        }
       
    }

//   // let queue = dispatch_get_main_queue()
//    let queue = dispatch_queue_create("cool", nil)
//    let coolThing = dispatch_async(queue) { 
//        longRunnningThing()
    
}

