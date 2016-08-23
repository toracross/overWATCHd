//
//  HanzoVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class HanzoVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var hanzoUlt1: AVAudioPlayer!
    var hanzoUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try hanzoUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hanzo1", ofType: "mp3")!))
            try hanzoUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hanzo2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func hanzoUlt1Pressed(sender: AnyObject) {
        hanzoUlt1.play()
    }
    
    @IBAction func hanzoUlt2Pressed(sender: AnyObject) {
        hanzoUlt2.play()
    }
}
