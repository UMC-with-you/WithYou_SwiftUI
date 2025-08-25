//
//  UpdateReplyDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// 대댓글 수정 요청 DTO
struct UpdateReplyRequestDTO: Codable {
    var content: String
}

/// 대댓글 수정 응답 DTO
struct UpdateReplyResponseDTO: Codable {
    var replyId: Int
}
