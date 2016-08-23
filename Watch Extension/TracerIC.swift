//
//  TracerIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class TracerIC: WKInterfaceController {
    
    var tracer1: WKAudioFilePlayer!
    var tracer2: WKAudioFilePlayer!
    
    @IBAction func tracerUltOnePressed() {
        tracer1.play()
    }
    
    @IBAction func tracerUltTwoPressed() {
        tracer2.play()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tracer1Path = NSBundle.mainBundle().pathForResource("tracer1", ofType: "mp3")!
        let tracer1URL = NSURL.fileURLWithPath(tracer1Path)
        let tracer1Asset = WKAudioFileAsset(URL: tracer1URL)
        let tracer1Play = WKAudioFilePlayerItem(asset: tracer1Asset)
        tracer1 = WKAudioFilePlayer(playerItem: tracer1Play)
        
        let tracer2Path = NSBundle.mainBundle().pathForResource("tracer2", ofType: "mp3")!
        let tracer2URL = NSURL.fileURLWithPath(tracer2Path)
        let tracer2Asset = WKAudioFileAsset(URL: tracer2URL)
        let tracer2Play = WKAudioFilePlayerItem(asset: tracer2Asset)
        tracer2 = WKAudioFilePlayer(playerItem: tracer2Play)
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
