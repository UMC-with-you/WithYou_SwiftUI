//
//  RegisterMemberDTO.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation

// MARK: - Register Member Request
struct RegisterMemberRequest: Codable {
    let name: String
}

// MARK: - Register Member Response
struct RegisterMemberResponse: Codable {
    let name: String
    let presignedUrl: String
}