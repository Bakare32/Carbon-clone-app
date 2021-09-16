//
//  PersonalDetailsViewController.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    
    let firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First name"
        return label
    }()
    
    let firstNameDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let middleName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Middle name"
        return label
    }()
    
    let middleNameDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let surName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Surname"
        return label
    }()
    
    let surnameDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let email: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        return label
    }()
    
    let emailDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let password: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }()
    
    let passwordDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    let gender: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gender"
        return label
    }()
    
    let genderDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let phoneNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone number"
        return label
    }()
    
    let phoneNumberDetails: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        //button.addTarget(self, action: #selector(goToPersonalDetails), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let acceptanceLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "By continuing, you accept our"
        text.font = UIFont(name: "Helvetica", size: 13)
        text.textAlignment = .center
        text.numberOfLines = 2
        return text
    }()
    
    let andLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "&"
        text.font = UIFont(name: "Helvetica", size: 13)
        text.textAlignment = .center
        text.numberOfLines = 2
        return text
    }()
    
    let termsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        //        button.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let privacyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        //        button.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func goToPersonalDetails() {
        let personalController = PersonalDetailsViewController()
        navigationController?.pushViewController(personalController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDefaultViews()
        constraintViews()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func addDefaultViews() {
        self.navigationItem.title = "Personal Details"
        view.backgroundColor = .white
        
        
        view.addSubview(firstName)
        view.addSubview(firstNameDetails)
        view.addSubview(middleName)
        view.addSubview(middleNameDetails)
        view.addSubview(surName)
        view.addSubview(surnameDetails)
        view.addSubview(email)
        view.addSubview(emailDetails)
        view.addSubview(password)
        view.addSubview(passwordDetails)
        view.addSubview(gender)
        view.addSubview(genderDetails)
        view.addSubview(phoneNumber)
        view.addSubview(phoneNumberDetails)
        view.addSubview(nextButton)
        view.addSubview(andLabel)
        view.addSubview(privacyButton)
        view.addSubview(acceptanceLabel)
        view.addSubview(termsButton)
        
    }
    
}
