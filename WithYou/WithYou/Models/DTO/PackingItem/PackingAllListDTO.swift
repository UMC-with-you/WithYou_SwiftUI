//
//  PackingAllList.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct PackingAllListResponse: Codable, Identifiable {
    var id: UUID = .init()
    let itemId: Int
    let itemName: String
    let packerId: Int
    let checked: Bool
    
    enum CodingKeys: CodingKey {
        case itemId
        case itemName
        case packerId
        case checked
    }
}
