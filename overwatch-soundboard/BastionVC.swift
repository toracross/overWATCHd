//
//  BastionVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class BastionVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var bastionUlt1: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try bastionUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bastion", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func bastionUlt1Pressed(sender: AnyObject) {
        bastionUlt1.play()
    }
}
