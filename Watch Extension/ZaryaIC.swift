//
//  ZaryaIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class ZaryaIC: WKInterfaceController {
    
    var zarya1: WKAudioFilePlayer!
    var zarya2: WKAudioFilePlayer!
    
    
    @IBAction func zarUltOnePressed() {
        zarya1.play()
    }
    
    
    @IBAction func zarUltTwoPressed() {
        zarya2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let zarya1Path = NSBundle.mainBundle().pathForResource("zarya1", ofType: "mp3")!
        let zarya1URL = NSURL.fileURLWithPath(zarya1Path)
        let zarya1Asset = WKAudioFileAsset(URL: zarya1URL)
        let zarya1Play = WKAudioFilePlayerItem(asset: zarya1Asset)
        zarya1 = WKAudioFilePlayer(playerItem: zarya1Play)
        
        let zarya2Path = NSBundle.mainBundle().pathForResource("zarya2", ofType: "mp3")!
        let zarya2URL = NSURL.fileURLWithPath(zarya2Path)
        let zarya2Asset = WKAudioFileAsset(URL: zarya2URL)
        let zarya2Play = WKAudioFilePlayerItem(asset: zarya2Asset)
        zarya2 = WKAudioFilePlayer(playerItem: zarya2Play)
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
