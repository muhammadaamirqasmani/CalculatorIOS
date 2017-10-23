//
//  CalculateButton.swift
//  CalculaterIOS
//
//  Created by admin on 23/10/2017.
//  Copyright © 2017 MuhammadAamir. All rights reserved.
//

import UIKit

@IBDesignable class CalculateButton: UIButton {

    
    override func draw(_ rect: CGRect) {
        self.layer.borderWidth = self.width
        self.layer.borderColor = self.color.cgColor
    }
    
    @IBInspectable var width:CGFloat = 1 {
        didSet{
            self.setNeedsDisplay()
        }
    }
    @IBInspectable var color:UIColor = UIColor.black {
        didSet{
            self.setNeedsDisplay()
        }
    }
}
