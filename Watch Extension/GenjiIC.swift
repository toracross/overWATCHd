//
//  GenjiIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class GenjiIC: WKInterfaceController {
    
    var genji1: WKAudioFilePlayer!
    var genji2: WKAudioFilePlayer!
    
    @IBAction func genUltOnePressed() {
        genji1.play()
    }
    
    @IBAction func genUltTwoPressed() {
        genji2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let genji1Path = NSBundle.mainBundle().pathForResource("genji1", ofType: "mp3")!
        let genji1URL = NSURL.fileURLWithPath(genji1Path)
        let genji1Asset = WKAudioFileAsset(URL: genji1URL)
        let genji1Play = WKAudioFilePlayerItem(asset: genji1Asset)
        genji1 = WKAudioFilePlayer(playerItem: genji1Play)
        
        let genji2Path = NSBundle.mainBundle().pathForResource("genji2", ofType: "mp3")!
        let genji2URL = NSURL.fileURLWithPath(genji2Path)
        let genji2Asset = WKAudioFileAsset(URL: genji2URL)
        let genji2Play = WKAudioFilePlayerItem(asset: genji2Asset)
        genji2 = WKAudioFilePlayer(playerItem: genji2Play)
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
