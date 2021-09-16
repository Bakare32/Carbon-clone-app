//
//  SignUpResource.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation


struct SignUpResource {
    
    func signupUser(signupRequest: SignUpRequest, completionHandler: @escaping (_ result: SignupResponse?) -> Void) {
        
        let signupURL = URL(string: ApiEndpoints.signup)!
        let httpUtility = HTTPUtility()
        
        do {
            let signupPostBody = try JSONEncoder().encode(signupRequest)
            httpUtility.postAPIData(requestUrl: signupURL, requestBody: signupPostBody, resultType: SignupResponse.self) { SignupAPIResponse in
                print(SignupAPIResponse)
                completionHandler(SignupAPIResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
    }
}
