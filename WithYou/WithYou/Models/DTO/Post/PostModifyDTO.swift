//
//  PostModifyDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct PostModifyRequest: Codable {
    let content: String
}

struct PostModifyResponse: Codable {
    let replyId: Int
}
