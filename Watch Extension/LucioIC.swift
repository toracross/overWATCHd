//
//  LucioIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class LucioIC: WKInterfaceController {
    
    
    var lucio1: WKAudioFilePlayer!
    var lucio2: WKAudioFilePlayer!
    
    
    @IBAction func lucioUltOnePressed() {
        lucio2.play()
    }
    
    @IBAction func lucioUltTwoPressed() {
        lucio1.play()
    }
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let lucio1Path = NSBundle.mainBundle().pathForResource("lucio1", ofType: "mp3")!
        let lucio1URL = NSURL.fileURLWithPath(lucio1Path)
        let lucio1Asset = WKAudioFileAsset(URL: lucio1URL)
        let lucio1Play = WKAudioFilePlayerItem(asset: lucio1Asset)
        lucio1 = WKAudioFilePlayer(playerItem: lucio1Play)
        
        let lucio2Path = NSBundle.mainBundle().pathForResource("lucio2", ofType: "mp3")!
        let lucio2URL = NSURL.fileURLWithPath(lucio2Path)
        let lucio2Asset = WKAudioFileAsset(URL: lucio2URL)
        let lucio2Play = WKAudioFilePlayerItem(asset: lucio2Asset)
        lucio2 = WKAudioFilePlayer(playerItem: lucio2Play)
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
