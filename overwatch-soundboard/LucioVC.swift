//
//  LucioVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class LucioVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var lucioUlt1: AVAudioPlayer!
    var lucioUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try lucioUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lucio1", ofType: "mp3")!))
            try lucioUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lucio2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func lucioUlt1Pressed(sender: AnyObject) {
        lucioUlt2.play()
    }
    
    @IBAction func lucioUlt2Pressed(sender: AnyObject) {
        lucioUlt1.play()
    }
}