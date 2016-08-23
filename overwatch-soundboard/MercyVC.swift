//
//  MercyVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class MercyVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var mercyUlt1: AVAudioPlayer!
    var mercyUlt2: AVAudioPlayer!
    var mercyUlt3: AVAudioPlayer!
    var mercyUlt4: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try mercyUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mercy1", ofType: "mp3")!))
            try mercyUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mercy2", ofType: "mp3")!))
            try mercyUlt3 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mercy3", ofType: "mp3")!))
            try mercyUlt4 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mercy4", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func mercyUlt1Pressed(sender: AnyObject) {
        mercyUlt1.play()
    }
    
    @IBAction func mercyUlt2Pressed(sender: AnyObject) {
        mercyUlt2.play()
    }
    
    @IBAction func mercyUlt3Pressed(sender: AnyObject) {
        mercyUlt3.play()
    }
    
    @IBAction func mercyUlt4Pressed(sender: AnyObject) {
        mercyUlt4.play()
    }
}
