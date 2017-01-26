//
//  FancyView.swift
//  devslopes-social
//
//  Created by ٍRawan Alhathal on 21‏/9‏/١٤٣٨.
//  Copyright © ١٤٣٨ ٍRawan Alhathal. All rights reserved.
//

import UIKit

class FancyView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor (red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.opacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
    }
    
}
