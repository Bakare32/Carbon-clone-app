//
//  SignInViewController.swift
//  Carbon
//
//  Created by  Decagon on 24/08/2021.
//

import UIKit

class SignInViewController: UIViewController {

     let carbonImage: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "Carbon")
            image.translatesAutoresizingMaskIntoConstraints = false
            return image
        }()
        
        let welcomeLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Hi there, welcome back. Please sign in."
            return label
        }()
        
         let emailAddress: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Email address"
            return label
        }()
        
         let emailAddressDetails: LeftPaddedTextField = {
            let textField = LeftPaddedTextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.layer.borderColor = UIColor.lightGray.cgColor
            textField.layer.borderWidth = 1
            textField.layer.cornerRadius = 5
            textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
            textField.keyboardType = .emailAddress
            return textField
        }()
        
         let pin: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Password"
            
            return label
        }()
        
         let pinDetails: LeftPaddedTextField = {
            let textField = LeftPaddedTextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.layer.borderColor = UIColor.lightGray.cgColor
            textField.layer.borderWidth = 1
            textField.layer.cornerRadius = 5
            textField.isSecureTextEntry = true
            textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
            textField.keyboardType = .emailAddress
            return textField
        }()
        
         let signInButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Sign In", for: .normal)
            button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
            button.addTarget(self, action: #selector(didTapToSignIn(_:)), for: .touchUpInside)
            button.layer.cornerRadius = 10
            return button
        }()
        
         let newUserLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "New to Carbon? "
            return label
        }()
        
        let newAccountButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Set up new account", for: .normal)
            button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
            button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.backgroundColor = .white
            button.addTarget(self, action: #selector(didtapTocreate(_:)), for: .touchUpInside)
            button.layer.cornerRadius = 10
            return button
        }()
        
    
    
    private var signViewModel = SigninViewModel()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            signViewModel.delegate = self
            view.backgroundColor = .white
            layoutItems()
        
        }
    
    @objc func didtapTocreate(_ sender: Any) {
        let setUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(setUpViewController, animated: true)
    }
    
    @objc func didTapToSignIn(_ sender: Any) {
        let request = SigninRequest(email: emailAddressDetails.text, password: pinDetails.text)
        signViewModel.signinUser(signinRequest: request)
        let personalViewController = PersonalDetailsViewController()
        self.navigationController?.pushViewController(personalViewController, animated: true)
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

}

class LeftPaddedTextField: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }

}
