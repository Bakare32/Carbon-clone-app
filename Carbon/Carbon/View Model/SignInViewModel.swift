//
//  SignInViewModel.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation

protocol SigninViewModelDelegate {
  func didReceiveSigninResponse(signinResponse: SigninResponse?)
}

class SigninViewModel {
  
  var delegate: SigninViewModelDelegate?
  
  func signinUser(signinRequest: SigninRequest) {
    
    let validationResult = SignInValidation().validate(signinRequest: signinRequest)
    
    if (validationResult.success) {
      
      // Use loginResult to call Login API
      let signinResource = SignInResource()
        signinResource.signinUser(signinRequest: signinRequest) { (signinAPIResponse) in
            guard
                signinAPIResponse?.errorMessage == nil,
                signinAPIResponse?.data != nil else { return }
        
      
        DispatchQueue.main.async {
            self.delegate?.didReceiveSigninResponse(signinResponse: signinAPIResponse)
        }
      }
    }
   
    self.delegate?.didReceiveSigninResponse(signinResponse: SigninResponse(errorMessage: validationResult.error, data: nil))
   
  }
}
