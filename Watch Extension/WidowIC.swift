//
//  WidowIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class WidowIC: WKInterfaceController {
    
    var widow1: WKAudioFilePlayer!
    var widow2: WKAudioFilePlayer!
    
    @IBAction func widowUltOnePressed() {
        widow1.play()
    }
    
    @IBAction func widowUltTwoPressed() {
        widow2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let widow1Path = NSBundle.mainBundle().pathForResource("widow1", ofType: "mp3")!
        let widow1URL = NSURL.fileURLWithPath(widow1Path)
        let widow1Asset = WKAudioFileAsset(URL: widow1URL)
        let widow1Play = WKAudioFilePlayerItem(asset: widow1Asset)
        widow1 = WKAudioFilePlayer(playerItem: widow1Play)
        
        let widow2Path = NSBundle.mainBundle().pathForResource("widow2", ofType: "mp3")!
        let widow2URL = NSURL.fileURLWithPath(widow2Path)
        let widow2Asset = WKAudioFileAsset(URL: widow2URL)
        let widow2Play = WKAudioFilePlayerItem(asset: widow2Asset)
        widow2 = WKAudioFilePlayer(playerItem: widow2Play)
        
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
