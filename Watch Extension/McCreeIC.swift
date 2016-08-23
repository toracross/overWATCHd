//
//  McCreeIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class McCreeIC: WKInterfaceController {
    
    var mccree1: WKAudioFilePlayer!
    var mccree2: WKAudioFilePlayer!
    
    @IBAction func mccUltOnePressed() {
        mccree1.play()
    }
    
    @IBAction func mccUltTwoPressed() {
        mccree2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let mccree1Path = NSBundle.mainBundle().pathForResource("mccree1", ofType: "mp3")!
        let mccree1URL = NSURL.fileURLWithPath(mccree1Path)
        let mccree1Asset = WKAudioFileAsset(URL: mccree1URL)
        let mccree1Play = WKAudioFilePlayerItem(asset: mccree1Asset)
        mccree1 = WKAudioFilePlayer(playerItem: mccree1Play)
        
        let mccree2Path = NSBundle.mainBundle().pathForResource("mccree2", ofType: "mp3")!
        let mccree2URL = NSURL.fileURLWithPath(mccree2Path)
        let mccree2Asset = WKAudioFileAsset(URL: mccree2URL)
        let mccree2Play = WKAudioFilePlayerItem(asset: mccree2Asset)
        mccree2 = WKAudioFilePlayer(playerItem: mccree2Play)
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
