//
//  SignUpValidation.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import Foundation


struct SignupValidation {
    
    func validate(signupRequest: SignUpRequest) -> ValidationResult {
        
        if (signupRequest.email!.isEmpty) {
            return ValidationResult(success: false, error: "User email cannot be empty!")
        }
        
        if signupRequest.phoneNumber!.count < 11 {
            return ValidationResult(success: false, error: "Invalid phone number, please enter a valid phone number!")
        }
        
        if (signupRequest.password!.isEmpty) {
            return ValidationResult(success: false, error: "User password is empty!")
        }
        
        return ValidationResult(success: true, error: nil)
    }
}
