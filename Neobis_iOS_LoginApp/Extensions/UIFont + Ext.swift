//
//  UIFont + Ext.swift
//  Neobis_iOS_LoginApp
//
//  Created by Ai Hawok on 06/05/2024.
//

import Foundation
import UIKit

extension UIFont {
    enum FontWeight: String, CaseIterable {
      case bold = "Bold"
      case medium = "Medium"
      case regular = "Regular"
    }
    static func urbanist(size: CGFloat, weight: FontWeight) -> UIFont {
      switch weight {
      case .bold:
        return UIFont(name: "Urbanist-\(weight.rawValue)", size: size) ?? UIFont.systemFont(ofSize: size, weight: .bold)
      case .medium:
        return UIFont(name: "Urbanist-\(weight.rawValue)", size: size) ?? UIFont.systemFont(ofSize: size, weight: .medium)
      case .regular:
        return UIFont(name: "Urbanist-\(weight.rawValue)", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
      }
    }
  }








