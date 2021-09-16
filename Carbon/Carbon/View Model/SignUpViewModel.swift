//
//  SignUpViewModel.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import Foundation

protocol SignupViewModelDelegate {
  func didReceiveSignupResponse(signupResponse: SignupResponse?)
}

class SignupViewModel {
  
  var delegate: SignupViewModelDelegate?
  
  func signupUser(signupRequest: SignUpRequest) {
    
    let validationResult = SignupValidation().validate(signupRequest: signupRequest)
    
    if (validationResult.success) {
      
      // Use loginResult to call Login API
      let signupResource = SignUpResource()
        signupResource.signupUser(signupRequest: signupRequest) { (signupAPIResponse) in
            guard
                signupAPIResponse?.errorMessage == nil,
                signupAPIResponse?.data != nil else { return }
        
      
        DispatchQueue.main.async {
            self.delegate?.didReceiveSignupResponse(signupResponse: signupAPIResponse)
        }
      }
    }
   
    self.delegate?.didReceiveSignupResponse(signupResponse: SignupResponse(errorMessage: validationResult.error, data: nil))
   
  }
}
