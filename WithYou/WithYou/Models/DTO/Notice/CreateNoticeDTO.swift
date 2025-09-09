//
//  CreateNoticeDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// Notice 생성 요청 DTO (0: 여행 전, 1: 여행 중, 2: 여행 후)
struct CreateNoticeRequestDTO: Codable {
    var memberId: Int
    var logId: Int
    var status: MemberType
    var content: String
}

/// Notice 생성 응답 DTO
struct CreateNoticeResponseDTO: Codable {
    var noticeId: Int
    var createdAt: String
}
