//
//  View + CornerRadius.swift
//  Shoppe
//
//  Created by Gaurav Patel on 28/03/25.
//

import UIKit

// MARK: - UIView Styling Extension
@IBDesignable
extension UIView {
    
    // MARK: - Corner Radius & Border Styling
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    // MARK: - Shadow Styling
    @IBInspectable var shadowColor: UIColor? {
        get {
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            layer.shadowColor = newValue?.cgColor
            updateShadow()
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get { return layer.shadowOpacity }
        set {
            layer.shadowOpacity = newValue
            updateShadow()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set {
            layer.shadowRadius = newValue
            updateShadow()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set {
            layer.shadowOffset = newValue
            updateShadow()
        }
    }
    
    // MARK: - Update Shadow Method
    private func updateShadow() {
        layer.masksToBounds = false // Ensures shadows aren't clipped
    }
}
