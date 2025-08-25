//
//  CommentAllDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// 게시글 댓글 작성 요청 DTO
struct CreateCommentRequestDTO: Codable {
    var content: String
}

/// 게시글 댓글 작성 응답 DTO
struct CreateCommentResponseDTO: Codable {
    var postId: Int
    var memberId: Int
    var commentId: Int
    var content: String
}
