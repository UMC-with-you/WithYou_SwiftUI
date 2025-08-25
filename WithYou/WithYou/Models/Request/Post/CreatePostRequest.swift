//
//  CreatePostRequest.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation

struct CreatePostRequest: Codable {
    var request: PostContent
    var mediaList: [String]
}

struct PostContent: Codable {
    var text: String
}
