//
//  ButtonDesign.swift
//  Overwatch Soundboard
//
//  Created by Wellison Pereira on 8/15/16.
//  Copyright © 2016 Tora Cross. All rights reserved.
//

import UIKit

class ButtonDesign: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
        layer.borderColor = UIColor.whiteColor().CGColor
        layer.borderWidth = 2
    }
}
