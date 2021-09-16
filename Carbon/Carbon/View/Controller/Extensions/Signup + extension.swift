//
//  Signup + extension.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import UIKit


extension SignUpViewController: SignupViewModelDelegate  {
    func didReceiveSignupResponse(signupResponse: SignupResponse?) {
        if (signupResponse?.errorMessage == nil && signupResponse?.data != nil) {
            debugPrint("Moving to next page")
        } else if (signupResponse?.errorMessage != nil) {
            guard let errorMessage = signupResponse?.errorMessage else {
                return
            }
            let alert = AlertService.alert(with: Constants.ErrorAlertTitle, message: errorMessage, alertStyle: .alert)
            self.present(alert, animated: true)
        }
        
    }
    
}
