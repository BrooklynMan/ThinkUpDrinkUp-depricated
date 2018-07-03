//
//  bigButton.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class bigButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // adds a white border
        // layer.borderWidth = 2.0
        // layer.borderColor = UIColor.white.cgColor
        
        // adds rounded corners
        layer.cornerRadius = 8
        
        // adds a drop shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.2
    }

}
