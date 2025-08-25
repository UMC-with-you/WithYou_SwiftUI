//
//  UpdateNoticeDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// Notice 수정 요청 DTO
struct UpdateNoticeRequestDTO: Codable {
    var noticeId: Int
    var status: TravelStatus
    var content: String
}

/// Notice 수정 응답 DTO
struct UpdateNoticeResponseDTO: Codable {
    var noticeId: Int
    var createdAt: String
}
