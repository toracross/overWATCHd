//
//  WidowmakerVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class WidowmakerVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var widowmakerUlt1: AVAudioPlayer!
    var widowmakerUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try widowmakerUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("widow1", ofType: "mp3")!))
            try widowmakerUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("widow2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func widowmakerUlt1Pressed(sender: AnyObject) {
        widowmakerUlt1.play()
    }
    
    @IBAction func widowmakerUlt2Pressed(sender: AnyObject) {
        widowmakerUlt2.play()
    }
}
