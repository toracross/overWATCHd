//
//  ZenyattaVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class ZenyattaVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var zenyattaUlt1: AVAudioPlayer!
    var zenyattaUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try zenyattaUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("zen1", ofType: "mp3")!))
            try zenyattaUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("zen2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func zenyattaUlt1Pressed(sender: AnyObject) {
        zenyattaUlt2.play()
    }
    
    @IBAction func zenyattaUlt2Pressed(sender: AnyObject) {
        zenyattaUlt1.play()
    }
}
