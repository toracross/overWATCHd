//
//  AnaIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class AnaIC: WKInterfaceController {

    var ana1: WKAudioFilePlayer!
    var ana2: WKAudioFilePlayer!
    
    
    @IBAction func anaUltOnePressed() {
        ana1.play()
    }
    
    @IBAction func anaUltTwoPressed() {
        ana2.play()
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let ana1Path = NSBundle.mainBundle().pathForResource("ana1", ofType: "mp3")!
        let ana1URL = NSURL.fileURLWithPath(ana1Path)
        let ana1Asset = WKAudioFileAsset(URL: ana1URL)
        let ana1Play = WKAudioFilePlayerItem(asset: ana1Asset)
        ana1 = WKAudioFilePlayer(playerItem: ana1Play)
        
        let ana2Path = NSBundle.mainBundle().pathForResource("ana2", ofType: "mp3")!
        let ana2URL = NSURL.fileURLWithPath(ana2Path)
        let ana2Asset = WKAudioFileAsset(URL: ana2URL)
        let ana2Play = WKAudioFilePlayerItem(asset: ana2Asset)
        ana2 = WKAudioFilePlayer(playerItem: ana2Play)
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
