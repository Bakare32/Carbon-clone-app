//
//  SigninConstraintExtension.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import UIKit

extension SignInViewController {
    
    
    func layoutItems() {

        view.addSubview(carbonImage)
        view.addSubview(welcomeLabel)
        view.addSubview(emailAddress)
        view.addSubview(emailAddressDetails)
        view.addSubview(pin)
        view.addSubview(pinDetails)
        view.addSubview(signInButton)
        view.addSubview(newUserLabel)
        view.addSubview(newAccountButton)
        
        NSLayoutConstraint.activate([
        
            carbonImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            carbonImage.heightAnchor.constraint(equalToConstant: 60),
            carbonImage.widthAnchor.constraint(equalToConstant: 210),
            carbonImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            welcomeLabel.topAnchor.constraint(equalTo: carbonImage.bottomAnchor, constant: -10),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailAddressDetails.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 70),
            emailAddressDetails.heightAnchor.constraint(equalToConstant: 60),
            emailAddressDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            emailAddressDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            emailAddress.bottomAnchor.constraint(equalTo: emailAddressDetails.topAnchor, constant: -10),
            emailAddress.heightAnchor.constraint(equalToConstant: 15),
            emailAddress.widthAnchor.constraint(equalToConstant: 130),
            emailAddress.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            
            pinDetails.topAnchor.constraint(equalTo: emailAddressDetails.bottomAnchor, constant: 40),
            pinDetails.heightAnchor.constraint(equalToConstant: 60),
            pinDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            pinDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            pin.bottomAnchor.constraint(equalTo: pinDetails.topAnchor, constant: -10),
            pin.heightAnchor.constraint(equalToConstant: 15),
            pin.widthAnchor.constraint(equalToConstant: 130),
            pin.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            
            newUserLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            newUserLabel.rightAnchor.constraint(equalTo: view.centerXAnchor),
            
            newAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            newAccountButton.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 2),
            
            signInButton.bottomAnchor.constraint(equalTo: newUserLabel.bottomAnchor, constant: -70),
            signInButton.heightAnchor.constraint(equalToConstant: 60),
            signInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            signInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
        ])
    }
    

    
}
