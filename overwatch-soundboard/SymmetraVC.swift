//
//  SymmetraVC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/16/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit
import AVFoundation

class SymmetraVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var symmetraUlt1: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            try symmetraUlt1 = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("sym1", ofType: "mp3")!))
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    @IBAction func symmetraUlt1Pressed(sender: AnyObject) {
        symmetraUlt1.play()
    }

}
