//
//  CustomTextField.swift
//  Neobis_iOS_LoginApp
//
//  Created by Ai Hawok on 29/04/2024.
//

import UIKit

class CustomTextField: UITextField {
    
    private var rightImageViewContainer: UIView?
    private var imageView: UIImageView?
    @IBInspectable var hasRightImage: Bool = false
    
    //    // MARK: - Initializers
    //    override init(frame: CGRect) {
    //        super.init(frame: frame)
    //        commonInit(hasRightImage: false)
    //    }
    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        commonInit(hasRightImage: hasRightImage)
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupRightImageViewContainer()
    }
    
    //    init(hasRightImage: Bool) {
    //        super.init(frame: .zero)
    //        commonInit(hasRightImage: hasRightImage)
    //    }
    //
    private func commonInit(hasRightImage: Bool) {
        self.hasRightImage = hasRightImage
        //  setupRightImageViewContainer()
        setup()
    }
    
    // MARK: - Setup Methods
    private func setup(){
        layer.cornerRadius = 8
        font = UIFont.urbanist(size: 13, weight: .regular)
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        leftView = paddingView
        leftViewMode = .always
        setupRightImageViewContainer()
    }
    
    private func setupRightImageViewContainer() {
        guard hasRightImage else {
            return // Don't create rightImageViewContainer if hasRightImage is false
        }
        print(hasRightImage)
        // Create image view with the desired image
        let image = UIImage(named: "FluentEyeFilled")
        imageView = UIImageView(image: image)
        imageView?.tintColor = .gray // Optional: Set tint color if needed
        imageView?.contentMode = .center
        
        // Set up right image view container
        rightImageViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: frame.size.height))
        imageView?.frame = rightImageViewContainer?.bounds ?? CGRect.zero
        rightImageViewContainer?.addSubview(imageView ?? UIView())
        
        // Set right view to right image view container
        rightView = rightImageViewContainer
        rightViewMode = .always
    }
}
