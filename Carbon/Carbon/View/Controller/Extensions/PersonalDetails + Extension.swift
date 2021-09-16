//
//  PersonalDetails + Extension.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import UIKit

extension PersonalDetailsViewController {
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([

            firstNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            firstNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            firstNameDetails.heightAnchor.constraint(equalToConstant: 40),
            firstNameDetails.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            
            firstName.bottomAnchor.constraint(equalTo: firstNameDetails.topAnchor, constant: -5),
            firstName.leftAnchor.constraint(equalTo: firstNameDetails.leftAnchor),
            
            middleNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            middleNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            middleNameDetails.heightAnchor.constraint(equalToConstant: 40),
            middleNameDetails.topAnchor.constraint(equalTo: firstNameDetails.bottomAnchor, constant: 30),
            
            middleName.bottomAnchor.constraint(equalTo: middleNameDetails.topAnchor, constant: -5),
            middleName.leftAnchor.constraint(equalTo: middleNameDetails.leftAnchor),
            
            surnameDetails.topAnchor.constraint(equalTo: middleNameDetails.bottomAnchor, constant: 30),
            surnameDetails.heightAnchor.constraint(equalToConstant: 40),
            surnameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            surnameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            surName.bottomAnchor.constraint(equalTo: surnameDetails.topAnchor, constant: -5),
            surName.leftAnchor.constraint(equalTo: surnameDetails.leftAnchor),

            emailDetails.topAnchor.constraint(equalTo: surnameDetails.bottomAnchor, constant: 30),
            emailDetails.heightAnchor.constraint(equalToConstant: 40),
            emailDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            emailDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            email.bottomAnchor.constraint(equalTo: emailDetails.topAnchor, constant: -5),
            email.leftAnchor.constraint(equalTo: emailDetails.leftAnchor),

            passwordDetails.topAnchor.constraint(equalTo: emailDetails.bottomAnchor, constant: 30),
            passwordDetails.heightAnchor.constraint(equalToConstant: 40),
            passwordDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            passwordDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            password.bottomAnchor.constraint(equalTo: passwordDetails.topAnchor, constant: -5),
            password.leftAnchor.constraint(equalTo: passwordDetails.leftAnchor),

            genderDetails.topAnchor.constraint(equalTo: passwordDetails.bottomAnchor, constant: 30),
            genderDetails.heightAnchor.constraint(equalToConstant: 40),
            genderDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            genderDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            gender.bottomAnchor.constraint(equalTo: genderDetails.topAnchor, constant: -5),
            gender.leftAnchor.constraint(equalTo: genderDetails.leftAnchor),

            phoneNumberDetails.topAnchor.constraint(equalTo: genderDetails.bottomAnchor, constant: 30),
            phoneNumberDetails.heightAnchor.constraint(equalToConstant: 40),
            phoneNumberDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            phoneNumberDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            phoneNumber.bottomAnchor.constraint(equalTo: phoneNumberDetails.topAnchor, constant: -5),
            phoneNumber.leftAnchor.constraint(equalTo: phoneNumberDetails.leftAnchor),
            
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
        ])
        
        
    }

    
    
    
    
}

