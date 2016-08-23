//
//  JunkratVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class JunkratVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var junkratUlt1: AVAudioPlayer!
    var junkratUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try junkratUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("junkrat1", ofType: "mp3")!))
            try junkratUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("junkrat2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func junkratUlt1Pressed(sender: AnyObject) {
        junkratUlt1.play()
    }
    
    @IBAction func junkratUlt2Pressed(sender: AnyObject) {
        junkratUlt2.play()
    }
}
