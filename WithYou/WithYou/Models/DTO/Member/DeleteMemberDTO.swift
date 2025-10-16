//
//  DeleteMemberDTO.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation

// MARK: - Delete Member Request
struct DeleteMemberRequest: Codable {
    let provider: String
    let reason: String
}
