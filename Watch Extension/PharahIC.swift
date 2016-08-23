//
//  PharahIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class PharahIC: WKInterfaceController {
    
    var pharah1: WKAudioFilePlayer!
    var pharah2: WKAudioFilePlayer!
    
    @IBAction func pharahUltOnePressed() {
        pharah1.play()
    }
    
    @IBAction func pharahUltTwoPressed() {
        pharah2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pharah1Path = NSBundle.mainBundle().pathForResource("pharah1", ofType: "mp3")!
        let pharah1URL = NSURL.fileURLWithPath(pharah1Path)
        let pharah1Asset = WKAudioFileAsset(URL: pharah1URL)
        let pharah1Play = WKAudioFilePlayerItem(asset: pharah1Asset)
        pharah1 = WKAudioFilePlayer(playerItem: pharah1Play)
        
        let pharah2Path = NSBundle.mainBundle().pathForResource("pharah2", ofType: "mp3")!
        let pharah2URL = NSURL.fileURLWithPath(pharah2Path)
        let pharah2Asset = WKAudioFileAsset(URL: pharah2URL)
        let pharah2Play = WKAudioFilePlayerItem(asset: pharah2Asset)
        pharah2 = WKAudioFilePlayer(playerItem: pharah2Play)
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
