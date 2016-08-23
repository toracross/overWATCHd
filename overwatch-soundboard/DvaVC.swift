//
//  DvaVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class DvaVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var dvaUlt1: AVAudioPlayer!
    var dvaUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try dvaUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dva1", ofType: "mp3")!))
            try dvaUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dva2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func dvaUlt1Pressed(sender: AnyObject) {
        dvaUlt1.play()
    }
    
    @IBAction func dvaUlt2Pressed(sender: AnyObject) {
        dvaUlt2.play()
    }
}
