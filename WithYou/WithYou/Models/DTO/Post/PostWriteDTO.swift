//
//  PostWriteDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 게시글 작성
struct PostWriteReqest: Codable {
    let request: RequestText
    let mediaList: [String]
}

struct RequestText: Codable {
    let text: String
}

struct PostWriteResponse: Codable {
    let postId: Int
}
