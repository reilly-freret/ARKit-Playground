//
//  UIView.swift
//  ARKit Playground
//
//  Created by Reilly Freret on 4/30/19.
//  Copyright © 2019 Reilly Freret. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // inspectable variables for setting in StoryBoard
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
}
