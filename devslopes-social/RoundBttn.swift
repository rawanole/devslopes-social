//
//  RoundBttn.swift
//  devslopes-social
//
//  Created by ٍRawan Alhathal on 21‏/9‏/١٤٣٨.
//  Copyright © ١٤٣٨ ٍRawan Alhathal. All rights reserved.
//

import UIKit

class RoundBttn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor (red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.opacity = 0.8
        layer.shadowRadius = 4.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        imageView?.contentMode = .scaleAspectFit
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2.5
        
    }
    
}
