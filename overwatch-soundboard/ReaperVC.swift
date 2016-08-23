//
//  ReaperVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class ReaperVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var reaperUlt1: AVAudioPlayer!
    var reaperUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try reaperUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("reaper1", ofType: "mp3")!))
            try reaperUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("reaper2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func reaperUlt1Pressed(sender: AnyObject) {
        reaperUlt1.play()
    }
    
    @IBAction func reaperUlt2Pressed(sender: AnyObject) {
        reaperUlt2.play()
    }
}