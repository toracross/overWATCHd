//
//  SymIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class SymIC: WKInterfaceController {
    
    var sym1: WKAudioFilePlayer!
    
    
    @IBAction func symUltOnePressed() {
        sym1.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let sym1Path = NSBundle.mainBundle().pathForResource("sym1", ofType: "mp3")!
        let sym1URL = NSURL.fileURLWithPath(sym1Path)
        let sym1Asset = WKAudioFileAsset(URL: sym1URL)
        let sym1Play = WKAudioFilePlayerItem(asset: sym1Asset)
        sym1 = WKAudioFilePlayer(playerItem: sym1Play)
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
