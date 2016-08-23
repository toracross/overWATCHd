//
//  PharahVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class PharahVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var pharahUlt1: AVAudioPlayer!
    var pharahUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try pharahUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pharah1", ofType: "mp3")!))
            try pharahUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pharah2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func pharahUlt1Pressed(sender: AnyObject) {
        pharahUlt1.play()
    }
    
    @IBAction func pharahUlt2Pressed(sender: AnyObject) {
        pharahUlt2.play()
    }
}