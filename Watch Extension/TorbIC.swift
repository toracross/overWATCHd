//
//  TorbIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class TorbIC: WKInterfaceController {
    
    var torb1: WKAudioFilePlayer!
    
    @IBAction func torbUltOnePressed() {
        torb1.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let torb1Path = NSBundle.mainBundle().pathForResource("torb1", ofType: "mp3")!
        let torb1URL = NSURL.fileURLWithPath(torb1Path)
        let torb1Asset = WKAudioFileAsset(URL: torb1URL)
        let torb1Play = WKAudioFilePlayerItem(asset: torb1Asset)
        torb1 = WKAudioFilePlayer(playerItem: torb1Play)
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
