//
//  ReinhardtIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class ReinhardtIC: WKInterfaceController {
    
    var rein1: WKAudioFilePlayer!
    
    @IBAction func reinUltOnePressed() {
        rein1.play()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let rein1Path = NSBundle.mainBundle().pathForResource("rein1", ofType: "mp3")!
        let rein1URL = NSURL.fileURLWithPath(rein1Path)
        let rein1Asset = WKAudioFileAsset(URL: rein1URL)
        let rein1Play = WKAudioFilePlayerItem(asset: rein1Asset)
        rein1 = WKAudioFilePlayer(playerItem: rein1Play)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
