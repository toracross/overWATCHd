//
//  ReinhardtVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit

import UIKit
import AVFoundation

class ReinhardtVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var reinhardtUlt1: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try reinhardtUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("rein1", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func reinhardtUlt1Pressed(sender: AnyObject) {
        reinhardtUlt1.play()
    }

}
