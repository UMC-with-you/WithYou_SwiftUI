//
//  NoticeCheckDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// Notice 체크 응답 DTO
struct NoticeCheckResponseDTO: Codable {
    var noticeId: Int
    var createdAt: String
}
