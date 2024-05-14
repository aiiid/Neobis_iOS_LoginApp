//
//  ViewController.swift
//  Neobis_iOS_LoginApp
//
//  Created by Ai Hawok on 29/04/2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var forgotPasswordButton: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var registerNowButton: UIButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFonts()
        setupUI()
    }
    
    private func setupFonts(){
        //bold fonts
        welcomeLabel.font = UIFont.urbanist(size: 30, weight: .bold)
        loginButton.titleLabel?.font = UIFont.urbanist(size: 15, weight: .bold)
        
        //medium fonts
        registerNowButton.titleLabel?.font = UIFont.urbanist(size: 16, weight: .bold)
        forgotPasswordButton.font = UIFont.urbanist(size: 13, weight: .medium)
        
        //regular fonts
        //textFields.forEach {$0?.font = UIFont.urbanist(size: 13, weight: .regular)}
        dontHaveAccountLabel.font = UIFont.urbanist(size: 14, weight: .regular)
    }
    
    private func setupUI(){
        loginButton.layer.cornerRadius = 8
    }
    
    
}

