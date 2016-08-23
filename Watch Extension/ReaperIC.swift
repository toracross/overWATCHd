//
//  ReaperIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class ReaperIC: WKInterfaceController {
    
    var reaper1: WKAudioFilePlayer!
    var reaper2: WKAudioFilePlayer!
    
    @IBAction func reaperUltOnePressed() {
        reaper1.play()
    }
    
    @IBAction func reaperTwoOnePressed() {
        reaper2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let reaper1Path = NSBundle.mainBundle().pathForResource("reaper1", ofType: "mp3")!
        let reaper1URL = NSURL.fileURLWithPath(reaper1Path)
        let reaper1Asset = WKAudioFileAsset(URL: reaper1URL)
        let reaper1Play = WKAudioFilePlayerItem(asset: reaper1Asset)
        reaper1 = WKAudioFilePlayer(playerItem: reaper1Play)
        
        let reaper2Path = NSBundle.mainBundle().pathForResource("reaper2", ofType: "mp3")!
        let reaper2URL = NSURL.fileURLWithPath(reaper2Path)
        let reaper2Asset = WKAudioFileAsset(URL: reaper2URL)
        let reaper2Play = WKAudioFilePlayerItem(asset: reaper2Asset)
        reaper2 = WKAudioFilePlayer(playerItem: reaper2Play)
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
