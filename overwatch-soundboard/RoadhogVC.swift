//
//  RoadhogVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit

import UIKit
import AVFoundation

class RoadhogVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var roadhogUlt1: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try roadhogUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("road1", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func roadhogUlt1Pressed(sender: AnyObject) {
        roadhogUlt1.play()
    }

}
