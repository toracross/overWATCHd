//
//  TorbjornVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit

import UIKit
import AVFoundation

class TorbjornVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var torbjornUlt1: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try torbjornUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("torb1", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func torbjornUlt1Pressed(sender: AnyObject) {
        torbjornUlt1.play()
    }

}
