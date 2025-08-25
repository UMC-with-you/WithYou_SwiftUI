//
//  CreateReplyDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// 대댓글 추가 요청 DTO
struct CreateReplyRequestDTO: Codable {
    var content: String
}

/// 대댓글 추가 응답 DTO
struct CreateReplyResponseDTO: Codable {
    var postId: Int
    var memberId: Int
    var commentId: Int
    var content: String
}

