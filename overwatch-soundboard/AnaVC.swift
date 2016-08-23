//
//  AnaVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class AnaVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var anaUlt1: AVAudioPlayer!
    var anaUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        do {
            try anaUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ana1", ofType: "mp3")!))
            try anaUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ana2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func anaUlt1Pressed(sender: AnyObject) {
        anaUlt1.play()
    }
    
    @IBAction func anaUlt2Pressed(sender: AnyObject) {
        anaUlt2.play()
    }
}
