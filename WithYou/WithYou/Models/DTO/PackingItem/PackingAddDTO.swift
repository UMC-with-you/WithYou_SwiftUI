//
//  PackingAddDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct PackingAddRequest: Codable {
    var itemName: String
}

struct PackingAddResponse: Codable {
    let packingItemId: Int
}
