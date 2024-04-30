//
//  ViewController.swift
//  Neobis_iOS_LoginApp
//
//  Created by Ai Hawok on 29/04/2024.
//

import UIKit

enum FontErrors: String, Error{
    case failedToLoad = """
                Failed to load the "CustomFont-Light" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
                         
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var forgotPasswordLabel: UILabel!
    
    @IBOutlet var bottomLabel1: UILabel!
    @IBOutlet var bottomLabel2: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setupFonts()
    }
    
    private func configureUI(){
        loginButton.layer.cornerRadius = 8
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        emailTextField.leftView = paddingView
        emailTextField.leftViewMode = .always
        
        
        

    }
    
    private func setupFonts(){
        let textFields = [emailTextField, passwordTextField]
       
        let boldFont = UIFont(name: "Urbanist-Bold", size: 30) ?? UIFont.systemFont(ofSize: 30, weight: .bold)
        let regularFont = UIFont(name: "Urbanist-Regular", size: 14) ?? UIFont.systemFont(ofSize: 16, weight: .regular)
        let mediumFont = UIFont(name: "Urbanist-Medium", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: .medium)
       
        //bold fonts
        welcomeLabel.font = boldFont
        loginButton.titleLabel?.font = UIFont(name: "Urbanist-Bold", size: 14) ?? UIFont.systemFont(ofSize: 15, weight: .bold)
        bottomLabel2.font = UIFont(name: "Urbanist-Bold", size: 15) ?? UIFont.systemFont(ofSize: 14, weight: .bold)
        //medium fonts
        bottomLabel1.font = mediumFont
        forgotPasswordLabel.font = mediumFont
        
        
        //regular fonts
        
        textFields.forEach {$0?.font = regularFont}
        
    }
    
    
    
}

