//
//  RefreshTokenDTO.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation

// MARK: - Refresh Token Request
struct RefreshTokenRequest: Codable {
    let refreshToken: String
}

// MARK: - Refresh Token Response
struct RefreshTokenResponse: Codable {
    let accessToken: String
    let refreshToken: String
}