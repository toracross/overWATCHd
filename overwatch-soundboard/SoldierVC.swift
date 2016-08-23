//
//  SoldierVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class SoldierVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var soldierUlt1: AVAudioPlayer!
    var soldierUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try soldierUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("soldier1", ofType: "mp3")!))
            try soldierUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("soldier2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func soldierUlt1Pressed(sender: AnyObject) {
        soldierUlt1.play()
    }
    
    @IBAction func soldierUlt2Pressed(sender: AnyObject) {
        soldierUlt2.play()
    }
}