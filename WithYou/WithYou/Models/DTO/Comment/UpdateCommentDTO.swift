//
//  UpdateCommentDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// 게시글 댓글 수정 요청 DTO
struct UpdateCommentRequestDTO: Codable {
    var content: String
}

/// 게시글 댓글 수정 응답 DTO
struct UpdateCommentResponseDTO: Codable {
    var replyId: Int
}
