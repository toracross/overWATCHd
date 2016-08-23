//
//  DvaIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class DvaIC: WKInterfaceController {
    
    var dva1: WKAudioFilePlayer!
    var dva2: WKAudioFilePlayer!
    
    @IBAction func dvaUltOnePressed() {
        dva1.play()
    }
    
    
    @IBAction func dvaUltTwoPressed() {
        dva2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let dva1Path = NSBundle.mainBundle().pathForResource("dva1", ofType: "mp3")!
        let dvaURL = NSURL.fileURLWithPath(dva1Path)
        let dvaAsset = WKAudioFileAsset(URL: dvaURL)
        let dvaPlay = WKAudioFilePlayerItem(asset: dvaAsset)
        dva1 = WKAudioFilePlayer(playerItem: dvaPlay)
        
        let dva2Path = NSBundle.mainBundle().pathForResource("dva2", ofType: "mp3")!
        let dva2URL = NSURL.fileURLWithPath(dva2Path)
        let dva2Asset = WKAudioFileAsset(URL: dva2URL)
        let dva2Play = WKAudioFilePlayerItem(asset: dva2Asset)
        dva2 = WKAudioFilePlayer(playerItem: dva2Play)
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
