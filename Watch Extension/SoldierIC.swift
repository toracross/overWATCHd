//
//  SoldierIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class SoldierIC: WKInterfaceController {
    
    
    var soldier1: WKAudioFilePlayer!
    var soldier2: WKAudioFilePlayer!
    
    @IBAction func soldierUltOnePressed() {
        soldier1.play()
    }
    
    @IBAction func soldierUltTwoPressed() {
        soldier2.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let soldier1Path = NSBundle.mainBundle().pathForResource("soldier1", ofType: "mp3")!
        let soldier1URL = NSURL.fileURLWithPath(soldier1Path)
        let soldier1Asset = WKAudioFileAsset(URL: soldier1URL)
        let soldier1Play = WKAudioFilePlayerItem(asset: soldier1Asset)
        soldier1 = WKAudioFilePlayer(playerItem: soldier1Play)
        
        let soldier2Path = NSBundle.mainBundle().pathForResource("soldier2", ofType: "mp3")!
        let soldier2URL = NSURL.fileURLWithPath(soldier2Path)
        let soldier2Asset = WKAudioFileAsset(URL: soldier2URL)
        let soldier2Play = WKAudioFilePlayerItem(asset: soldier2Asset)
        soldier2 = WKAudioFilePlayer(playerItem: soldier2Play)
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
