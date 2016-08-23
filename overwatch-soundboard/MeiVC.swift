//
//  MeiVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class MeiVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var meiUlt1: AVAudioPlayer!
    var meiUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try meiUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mei1", ofType: "mp3")!))
            try meiUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mei2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func meiUlt1Pressed(sender: AnyObject) {
        meiUlt1.play()
    }
    
    @IBAction func meiUlt2Pressed(sender: AnyObject) {
        meiUlt2.play()
    }
}
