//
//  WinstonIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class WinstonIC: WKInterfaceController {
    
    var winston1: WKAudioFilePlayer!
    
    @IBAction func winUltOnePressed() {
        winston1.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let winston1Path = NSBundle.mainBundle().pathForResource("winston1", ofType: "mp3")!
        let winston1URL = NSURL.fileURLWithPath(winston1Path)
        let winston1Asset = WKAudioFileAsset(URL: winston1URL)
        let winston1Play = WKAudioFilePlayerItem(asset: winston1Asset)
        winston1 = WKAudioFilePlayer(playerItem: winston1Play)
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
