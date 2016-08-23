//
//  JunkratIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class JunkratIC: WKInterfaceController {
    
    var junkrat1: WKAudioFilePlayer!
    var junkrat2: WKAudioFilePlayer!
    
    @IBAction func junkUltOnePressed() {
        junkrat1.play()
    }
    
    @IBAction func junkUltTwoPressed() {
        junkrat2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let junkrat1Path = NSBundle.mainBundle().pathForResource("junkrat1", ofType: "mp3")!
        let junkrat1URL = NSURL.fileURLWithPath(junkrat1Path)
        let junkrat1Asset = WKAudioFileAsset(URL: junkrat1URL)
        let junkrat1Play = WKAudioFilePlayerItem(asset: junkrat1Asset)
        junkrat1 = WKAudioFilePlayer(playerItem: junkrat1Play)
        
        let junkrat2Path = NSBundle.mainBundle().pathForResource("junkrat2", ofType: "mp3")!
        let junkrat2URL = NSURL.fileURLWithPath(junkrat2Path)
        let junkrat2Asset = WKAudioFileAsset(URL: junkrat2URL)
        let junkrat2Play = WKAudioFilePlayerItem(asset: junkrat2Asset)
        junkrat2 = WKAudioFilePlayer(playerItem: junkrat2Play)
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
