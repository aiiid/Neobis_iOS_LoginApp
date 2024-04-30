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
    }
    
    private func setupRightImageViewContainer() {
        // Create image view with eye icon
        imageView = UIImageView(image: UIImage(systemName: "eye"))
        imageView.tintColor = .gray
        imageView.contentMode = .center
        
        // Add tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(togglePasswordVisibility))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGesture)
        
        // Set up right image view container
        rightImageViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: frame.size.height))
        imageView.frame = rightImageViewContainer.bounds
        rightImageViewContainer.addSubview(imageView)
        
        // Set right view to right image view container
        rightView = rightImageViewContainer
        rightViewMode = .always
    }
    
    @objc private func togglePasswordVisibility() {
        isSecureTextEntry.toggle()
        isPasswordVisible.toggle()
        
        // Change eye icon based on password visibility
        let imageName = isPasswordVisible ? "eye.slash" : "eye"
        imageView.image = UIImage(systemName: imageName)
    }
}