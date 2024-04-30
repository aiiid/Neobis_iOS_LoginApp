//
//  CustomTextField.swift
//  Neobis_iOS_LoginApp
//
//  Created by Ai Hawok on 29/04/2024.
//

import UIKit

class CustomTextField: UITextField {
    
    private var rightImageViewContainer: UIView!
    private var imageView: UIImageView!
    private var isPasswordVisible = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupRightImageViewContainer()
        setupLeftPadding()
    }
    
    private func setupRightImageViewContainer() {
        // Create image view with the desired image
       // let image = UIImage(named: "FluentEye")
        let image = UIImage(systemName: "eye")
        imageView = UIImageView(image: image)
        imageView.tintColor = .gray // Optional: Set tint color if needed
        imageView.contentMode = .center
        
        // Set up right image view container
        rightImageViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: frame.size.height))
        imageView.frame = rightImageViewContainer.bounds
        rightImageViewContainer.addSubview(imageView)
        
        // Set right view to right image view container
        rightView = rightImageViewContainer
        rightViewMode = .always
    }
    
    private func setupLeftPadding(){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        leftView = paddingView
        leftViewMode = .always
    }
    
    
}
