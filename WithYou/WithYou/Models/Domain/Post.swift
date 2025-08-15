//
//  Post.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: Int
    var thumbnailUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "postId"
        case thumbnailUrl
    }
}
