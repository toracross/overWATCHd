//
//  GenjiVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/15/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class GenjiVC: UIViewController, UIPopoverPresentationControllerDelegate {

    var genjiUlt1: AVAudioPlayer!
    var genjiUlt2: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(250,150)
        
        
        do {
            try genjiUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("genji1", ofType: "mp3")!))
            try genjiUlt2 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("genji2", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }

    }
    
    @IBAction func genjiUlt1Pressed(sender: AnyObject) {
        genjiUlt1.play()
    }
    
    @IBAction func genjiUlt2Pressed(sender: AnyObject) {
        genjiUlt2.play()
    }
    
    
    

}
