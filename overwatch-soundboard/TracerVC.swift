//
//  TracerVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class TracerVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var tracerUlt1: AVAudioPlayer!
    var tracerUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try tracerUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tracer1", ofType: "mp3")!))
            try tracerUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tracer2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func tracerUlt1Pressed(sender: AnyObject) {
        tracerUlt1.play()
    }
    
    @IBAction func tracerUlt2Pressed(sender: AnyObject) {
        tracerUlt2.play()
    }
}