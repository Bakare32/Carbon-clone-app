//
//  SiginViewController + Extension.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation

extension SignInViewController: SigninViewModelDelegate  {
    func didReceiveSigninResponse(signinResponse: SigninResponse?) {
        if (signinResponse?.errorMessage == nil && signinResponse?.data != nil) {
            let personalViewController = PersonalDetailsViewController()
            self.navigationController?.pushViewController(personalViewController, animated: true)
            debugPrint("Moving to next page")
            
        } else if (signinResponse?.errorMessage != nil) {
            guard let errorMessage = signinResponse?.errorMessage else { return }
            let alert = AlertService.alert(with: Constants.ErrorAlertTitle, message: errorMessage, alertStyle: .alert)
            self.present(alert, animated: true)
        }
    }
    
}
