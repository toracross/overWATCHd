//
//  ZenIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class ZenIC: WKInterfaceController {
    
    
    var zen1: WKAudioFilePlayer!
    var zen2: WKAudioFilePlayer!
    
    
    @IBAction func zenUltOnePressed() {
        zen2.play()
    }
    
    
    @IBAction func zenUltTwoPressed() {
        zen1.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let zen1Path = NSBundle.mainBundle().pathForResource("zen1", ofType: "mp3")!
        let zen1URL = NSURL.fileURLWithPath(zen1Path)
        let zen1Asset = WKAudioFileAsset(URL: zen1URL)
        let zem1Play = WKAudioFilePlayerItem(asset: zen1Asset)
        zen1 = WKAudioFilePlayer(playerItem: zem1Play)
        
        let zen2Path = NSBundle.mainBundle().pathForResource("zen2", ofType: "mp3")!
        let zen2URL = NSURL.fileURLWithPath(zen2Path)
        let zen2Asset = WKAudioFileAsset(URL: zen2URL)
        let zen2Play = WKAudioFilePlayerItem(asset: zen2Asset)
        zen2 = WKAudioFilePlayer(playerItem: zen2Play)
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
