////
////  UITextField + Ext.swift
////  Neobis_iOS_LoginApp
////
////  Created by Ai Hawok on 29/04/2024.
////
//
//import Foundation
//import UIKit
//
//extension UITextField {
//    // MARK: - Appearance
//    @IBInspectable var cornerRadius: CGFloat {
//        get {
//            return layer.cornerRadius
//        }
//        set {
//            layer.cornerRadius = newValue
//            layer.masksToBounds = true
//        }
//    }
//    @IBInspectable var borderWidth: CGFloat {
//        get {
//            return layer.borderWidth
//        }
//        set {
//            layer.borderWidth = newValue
//        }
//    }
//    
//    @IBInspectable var borderColor: UIColor? {
//        get {
//            guard let color = layer.borderColor else { return nil }
//            return UIColor(cgColor: color)
//        }
//        set {
//            layer.borderColor = newValue?.cgColor
//        }
//    }
//  
//}
//
