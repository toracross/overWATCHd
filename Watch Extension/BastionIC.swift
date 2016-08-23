//
//  BastionIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class BastionIC: WKInterfaceController {
    
    var bastion: WKAudioFilePlayer!
    
    @IBAction func bastionUltPressed() {
        bastion.play()
    }
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let bastionPath = NSBundle.mainBundle().pathForResource("bastion", ofType: "mp3")!
        let bastionURL = NSURL.fileURLWithPath(bastionPath)
        let bastionAsset = WKAudioFileAsset(URL: bastionURL)
        let bastionPlay = WKAudioFilePlayerItem(asset: bastionAsset)
        bastion = WKAudioFilePlayer(playerItem: bastionPlay)
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
