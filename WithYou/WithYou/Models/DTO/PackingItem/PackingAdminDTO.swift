//
//  PackingAdminDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct PackingAdminRequest: Codable {
    let packerId: Int
    
    enum CodingKeys: String, CodingKey {
        case packerId = "packer_id"
    }
}

struct PackingAdminResponse: Codable {
    let packingItemId: Int
    let packerId: Int
    let checkboxState: Bool
}
