//
//  LoginDTO.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation

// MARK: - Login Request
struct LoginRequest: Codable {
    let accessToken: String
    let provider: String
    let email: String
    let name: String
    let nonce: String
    let authorizationCode: String
}

// MARK: - Login Response
struct LoginResponse: Codable {
    let accessToken: String
    let refreshToken: String
}