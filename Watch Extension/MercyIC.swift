//
//  MercyIC.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/13/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import WatchKit
import Foundation


class MercyIC: WKInterfaceController {
    
    
    var mercy1: WKAudioFilePlayer!
    var mercy2: WKAudioFilePlayer!
    var mercy3: WKAudioFilePlayer!
    var mercy4: WKAudioFilePlayer!
    
    
    @IBAction func mercyUltOnePressed() {
        mercy1.play()
    }
    
    @IBAction func mercyUltTwoPressed() {
        mercy2.play()
    }
    
    @IBAction func mercyUltThreePressed() {
        mercy3.play()
    }
    
    @IBAction func mercyUltFourPressed() {
        mercy4.play()
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let mercy1Path = NSBundle.mainBundle().pathForResource("mercy1", ofType: "mp3")!
        let mercy1URL = NSURL.fileURLWithPath(mercy1Path)
        let mercy1Asset = WKAudioFileAsset(URL: mercy1URL)
        let mercy1Play = WKAudioFilePlayerItem(asset: mercy1Asset)
        mercy1 = WKAudioFilePlayer(playerItem: mercy1Play)
        
        let mercy2Path = NSBundle.mainBundle().pathForResource("mercy2", ofType: "mp3")!
        let mercy2URL = NSURL.fileURLWithPath(mercy2Path)
        let mercy2Asset = WKAudioFileAsset(URL: mercy2URL)
        let mercy2Play = WKAudioFilePlayerItem(asset: mercy2Asset)
        mercy2 = WKAudioFilePlayer(playerItem: mercy2Play)
        
        let mercy3Path = NSBundle.mainBundle().pathForResource("mercy3", ofType: "mp3")!
        let mercy3URL = NSURL.fileURLWithPath(mercy3Path)
        let mercy3Asset = WKAudioFileAsset(URL: mercy3URL)
        let mercy3Play = WKAudioFilePlayerItem(asset: mercy3Asset)
        mercy3 = WKAudioFilePlayer(playerItem: mercy3Play)
        
        let mercy4Path = NSBundle.mainBundle().pathForResource("mercy4", ofType: "mp3")!
        let mercy4URL = NSURL.fileURLWithPath(mercy4Path)
        let mercy4Asset = WKAudioFileAsset(URL: mercy4URL)
        let mercy4Play = WKAudioFilePlayerItem(asset: mercy4Asset)
        mercy4 = WKAudioFilePlayer(playerItem: mercy4Play)
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
