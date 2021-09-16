//
//  SignUpConstraintExtension.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import UIKit

extension SignUpViewController {

    
    func addDefaultViews() {
            self.navigationController?.setNavigationBarHidden(false, animated: true)
            self.navigationItem.title = "Create your Carbon account"
            view.backgroundColor = .white
            
            view.addSubview(welcomeText)
            view.addSubview(firstName)
            view.addSubview(firstNameDetails)
            view.addSubview(middleName)
            view.addSubview(middleNameDetails)
            view.addSubview(lastName)
            view.addSubview(lastNameDetails)
            view.addSubview(email)
            view.addSubview(emailDetails)
            view.addSubview(password)
            view.addSubview(passwordDetails)
            view.addSubview(gender)
            view.addSubview(genderDetails)
            view.addSubview(phoneNumber)
            view.addSubview(phoneNumberDetails)
            view.addSubview(signUpButton)
            view.addSubview(footerText)
        }
        
        func constraintViews() {
            
            NSLayoutConstraint.activate([
                welcomeText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                welcomeText.leftAnchor.constraint(equalTo: view.leftAnchor),
                welcomeText.rightAnchor.constraint(equalTo: view.rightAnchor),
                
                footerText.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -10),
                footerText.leftAnchor.constraint(equalTo: view.leftAnchor),
                footerText.rightAnchor.constraint(equalTo: view.rightAnchor),
                
                firstNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                firstNameDetails.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -7),
                firstNameDetails.heightAnchor.constraint(equalToConstant: 40),
                firstNameDetails.topAnchor.constraint(equalTo: welcomeText.bottomAnchor, constant: 50),
                
                firstName.bottomAnchor.constraint(equalTo: firstNameDetails.topAnchor, constant: -10),
                firstName.leftAnchor.constraint(equalTo: firstNameDetails.leftAnchor),
                
                middleNameDetails.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 7),
                middleNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                middleNameDetails.heightAnchor.constraint(equalToConstant: 40),
                middleNameDetails.topAnchor.constraint(equalTo: welcomeText.bottomAnchor, constant: 50),
                
                middleName.bottomAnchor.constraint(equalTo: middleNameDetails.topAnchor, constant: -10),
                middleName.leftAnchor.constraint(equalTo: middleNameDetails.leftAnchor),
                
                lastNameDetails.topAnchor.constraint(equalTo: firstNameDetails.bottomAnchor, constant: 40),
                lastNameDetails.heightAnchor.constraint(equalToConstant: 40),
                lastNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                lastNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                
                lastName.bottomAnchor.constraint(equalTo: lastNameDetails.topAnchor, constant: -10),
                lastName.leftAnchor.constraint(equalTo: lastNameDetails.leftAnchor),
                
                emailDetails.topAnchor.constraint(equalTo: lastNameDetails.bottomAnchor, constant: 40),
                emailDetails.heightAnchor.constraint(equalToConstant: 40),
                emailDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                emailDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                
                email.bottomAnchor.constraint(equalTo: emailDetails.topAnchor, constant: -10),
                email.leftAnchor.constraint(equalTo: emailDetails.leftAnchor),
                
                passwordDetails.topAnchor.constraint(equalTo: emailDetails.bottomAnchor, constant: 40),
                passwordDetails.heightAnchor.constraint(equalToConstant: 40),
                passwordDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                passwordDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                
                password.bottomAnchor.constraint(equalTo: passwordDetails.topAnchor, constant: -10),
                password.leftAnchor.constraint(equalTo: passwordDetails.leftAnchor),
                
                genderDetails.topAnchor.constraint(equalTo: passwordDetails.bottomAnchor, constant: 40),
                genderDetails.heightAnchor.constraint(equalToConstant: 40),
                genderDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                genderDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                
                gender.bottomAnchor.constraint(equalTo: genderDetails.topAnchor, constant: -10),
                gender.leftAnchor.constraint(equalTo: genderDetails.leftAnchor),
                
                phoneNumberDetails.topAnchor.constraint(equalTo: genderDetails.bottomAnchor, constant: 40),
                phoneNumberDetails.heightAnchor.constraint(equalToConstant: 40),
                phoneNumberDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                phoneNumberDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
                
                phoneNumber.bottomAnchor.constraint(equalTo: phoneNumberDetails.topAnchor, constant: -10),
                phoneNumber.leftAnchor.constraint(equalTo: phoneNumberDetails.leftAnchor),
                
                signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
                signUpButton.heightAnchor.constraint(equalToConstant: 60),
                signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            ])
        }
    
}
