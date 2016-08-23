//
//  Roadhog.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class Roadhog: WKInterfaceController {
    
    var road1: WKAudioFilePlayer!
    
    
    @IBAction func roadUltOnePressed() {
        road1.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let road1Path = NSBundle.mainBundle().pathForResource("road1", ofType: "mp3")!
        let road1URL = NSURL.fileURLWithPath(road1Path)
        let road1Asset = WKAudioFileAsset(URL: road1URL)
        let road1Play = WKAudioFilePlayerItem(asset: road1Asset)
        road1 = WKAudioFilePlayer(playerItem: road1Play)
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
