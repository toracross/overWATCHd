//
//  ZaryaVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class ZaryaVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var zaryaUlt1: AVAudioPlayer!
    var zaryaUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try zaryaUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("zarya1", ofType: "mp3")!))
            try zaryaUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("zarya2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func zaryaUlt1Pressed(sender: AnyObject) {
        zaryaUlt1.play()
    }
    
    @IBAction func zaryaUlt2Pressed(sender: AnyObject) {
        zaryaUlt2 .play()
    }
}
