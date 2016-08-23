//
//  ViewController.swift
//  overwatch-soundboard
//
//  Created by Wellison Pereira on 8/10/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Offense Heroes
        if segue.identifier == "GenjiPop" {
            let genjiDest = segue.destinationViewController
            if let GenjiVCPop = genjiDest.popoverPresentationController {
                GenjiVCPop.delegate = self
                genjiDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "McCreePop" {
            let mccreeDest = segue.destinationViewController
            if let McCreeVCPop = mccreeDest.popoverPresentationController {
                McCreeVCPop.delegate = self
                mccreeDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "PharahPop" {
            let pharahDest = segue.destinationViewController
            if let PharahVCPop = pharahDest.popoverPresentationController {
                PharahVCPop.delegate = self
                pharahDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "ReaperPop" {
            let reaperDest = segue.destinationViewController
            if let ReaperVCPop = reaperDest.popoverPresentationController {
                ReaperVCPop.delegate = self
                reaperDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "SoldierPop" {
            let soldierDest = segue.destinationViewController
            if let SoldierVCPop = soldierDest.popoverPresentationController {
                SoldierVCPop.delegate = self
                soldierDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "TracerPop" {
            let tracerDest = segue.destinationViewController
            if let TracerVCPop = tracerDest.popoverPresentationController {
                TracerVCPop.delegate = self
                tracerDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        //Defense Heroes
        
        if segue.identifier == "BastionPop" {
            let bastionDest = segue.destinationViewController
            if let BastionVCPop = bastionDest.popoverPresentationController {
                BastionVCPop.delegate = self
                bastionDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "HanzoPop" {
            let hanzoDest = segue.destinationViewController
            if let HanzoVCPop = hanzoDest.popoverPresentationController {
                HanzoVCPop.delegate = self
                hanzoDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "JunkratPop" {
            let junkratDest = segue.destinationViewController
            if let JunkratVCPop = junkratDest.popoverPresentationController {
                JunkratVCPop.delegate = self
                junkratDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "MeiPop" {
            let meiDest = segue.destinationViewController
            if let MeiVCPop = meiDest.popoverPresentationController {
                MeiVCPop.delegate = self
                meiDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "TorbjornPop" {
            let torbjornDest = segue.destinationViewController
            if let TorbjornVCPop = torbjornDest.popoverPresentationController {
                TorbjornVCPop.delegate = self
                torbjornDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "WidowmakerPop" {
            let widowmakerDest = segue.destinationViewController
            if let WidowmakerVCPop = widowmakerDest.popoverPresentationController {
                WidowmakerVCPop.delegate = self
                widowmakerDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
    
        //Tank Heroes
        if segue.identifier == "DvaPop" {
            let dvaDest = segue.destinationViewController
            if let DvaVCPop = dvaDest.popoverPresentationController {
                DvaVCPop.delegate = self
                dvaDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "ReinhardtPop" {
            let reinhardtDest = segue.destinationViewController
            if let ReinhardtVCPop = reinhardtDest.popoverPresentationController {
                ReinhardtVCPop.delegate = self
                reinhardtDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "RoadhogPop" {
            let roadhogDest = segue.destinationViewController
            if let RoadhogVCPop = roadhogDest.popoverPresentationController {
                RoadhogVCPop.delegate = self
                roadhogDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "WinstonPop" {
            let winstonDest = segue.destinationViewController
            if let WinstonVCPop = winstonDest.popoverPresentationController {
                WinstonVCPop.delegate = self
                winstonDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "ZaryaPop" {
            let zaryaDest = segue.destinationViewController
            if let ZaryaVCPop = zaryaDest.popoverPresentationController {
                ZaryaVCPop.delegate = self
                zaryaDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        //Support Heroes
        if segue.identifier == "AnaPop" {
            let anaDest = segue.destinationViewController
            if let AnaVCPop = anaDest.popoverPresentationController {
                AnaVCPop.delegate = self
                anaDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "LucioPop" {
            let lucioDest = segue.destinationViewController
            if let LucioVCPop = lucioDest.popoverPresentationController {
                LucioVCPop.delegate = self
                lucioDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "MercyPop" {
            let mercyDest = segue.destinationViewController
            if let MercyVCPop = mercyDest.popoverPresentationController {
                MercyVCPop.delegate = self
                mercyDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "SymmetraPop" {
            let symmetraDest = segue.destinationViewController
            if let SymmetraVCPop = symmetraDest.popoverPresentationController {
                SymmetraVCPop.delegate = self
                symmetraDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
        
        if segue.identifier == "ZenyattaPop" {
            let zenyattaDest = segue.destinationViewController
            if let ZenyattaVCPop = zenyattaDest.popoverPresentationController {
                ZenyattaVCPop.delegate = self
                zenyattaDest.popoverPresentationController?.sourceRect = (sender?.bounds)!
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle   {
        return .None
    }
}