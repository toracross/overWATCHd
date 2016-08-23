//
//  McCreeVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class McCreeVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var mccreeUlt1: AVAudioPlayer!
    var mccreeUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try mccreeUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mccree1", ofType: "mp3")!))
            try mccreeUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mccree2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func mccreeUlt1Pressed(sender: AnyObject) {
        mccreeUlt1.play()
    }
    
    @IBAction func mccreeUlt2Pressed(sender: AnyObject) {
        mccreeUlt2.play()
    }
    
    
    
    
}
