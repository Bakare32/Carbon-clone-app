//
//  SignInResource.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation

struct SignInResource {
    
    func signinUser(signinRequest: SigninRequest, completionHandler: @escaping (_ result: SigninResponse?) -> Void) {
        
        let signinURL = URL(string: ApiEndpoints.signin)!
        let httpUtility = HTTPUtility()
        
        do {
            let signinPostBody = try JSONEncoder().encode(signinRequest)
            httpUtility.postAPIData(requestUrl: signinURL, requestBody: signinPostBody, resultType: SigninResponse.self) { SigninAPIResponse in
                print(SigninAPIResponse)
                completionHandler(SigninAPIResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
    }
}
