//
//  HanzoIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class HanzoIC: WKInterfaceController {
    
    var hanzo1: WKAudioFilePlayer!
    var hanzo2: WKAudioFilePlayer!
    
    @IBAction func hanzoUltOnePressed() {
        hanzo1.play()
    }
    
    @IBAction func hanzoUltTwoPressed() {
        hanzo2.play()
    }
    


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let hanzo1Path = NSBundle.mainBundle().pathForResource("hanzo1", ofType: "mp3")!
        let hanzo1URL = NSURL.fileURLWithPath(hanzo1Path)
        let hanzo1Asset = WKAudioFileAsset(URL: hanzo1URL)
        let hanzo1Play = WKAudioFilePlayerItem(asset: hanzo1Asset)
        hanzo1 = WKAudioFilePlayer(playerItem: hanzo1Play)
        
        let hanzo2Path = NSBundle.mainBundle().pathForResource("hanzo2", ofType: "mp3")!
        let hanzo2URL = NSURL.fileURLWithPath(hanzo2Path)
        let hanzo2Asset = WKAudioFileAsset(URL: hanzo2URL)
        let hanzo2Play = WKAudioFilePlayerItem(asset: hanzo2Asset)
        hanzo2 = WKAudioFilePlayer(playerItem: hanzo2Play)
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
