//
//  MeiIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class MeiIC: WKInterfaceController {
    
    var mei1: WKAudioFilePlayer!
    var mei2: WKAudioFilePlayer!
    
    @IBAction func meiUltOnePressed() {
        mei1.play()
    }
    
    @IBAction func meiUltTwoPressed() {
        mei2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let mei1Path = NSBundle.mainBundle().pathForResource("mei1", ofType: "mp3")!
        let mei1URL = NSURL.fileURLWithPath(mei1Path)
        let mei1Asset = WKAudioFileAsset(URL: mei1URL)
        let mei1Play = WKAudioFilePlayerItem(asset: mei1Asset)
        mei1 = WKAudioFilePlayer(playerItem: mei1Play)
        
        let mei2Path = NSBundle.mainBundle().pathForResource("mei2", ofType: "mp3")!
        let mei2URL = NSURL.fileURLWithPath(mei2Path)
        let mei2Asset = WKAudioFileAsset(URL: mei2URL)
        let mei2Play = WKAudioFilePlayerItem(asset: mei2Asset)
        mei2 = WKAudioFilePlayer(playerItem: mei2Play)
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
