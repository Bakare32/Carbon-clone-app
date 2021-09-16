//
//  SiginValidation.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation

struct SignInValidation {
    
    func validate(signinRequest: SigninRequest) -> ValidationResult {
        
        if (signinRequest.email!.isEmpty) {
            return ValidationResult(success: false, error: "User email cannot be empty!")
        }
        
        if (signinRequest.password!.isEmpty) {
            return ValidationResult(success: false, error: "User password is empty!")
        }
        
        return ValidationResult(success: true, error: nil)
    }
}
