//
//  questionLabel.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/28/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class questionLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // adds a drop shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.2
        
    }

}
