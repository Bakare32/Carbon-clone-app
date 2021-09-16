//
//  SignupResponse.swift
//  Carbon
//
//  Created by  Decagon on 25/08/2021.
//

import Foundation

struct SignupResponse: Decodable {
    let errorMessage: String?
    let data: NewuserData?
}

struct NewuserData: Decodable {
    
    let id: Int
    let firstName: String
    let lastName: String
    let middleName: String
    let email: String?
    let password: String?
    let gender: String
    let phoneNumber: String
}
