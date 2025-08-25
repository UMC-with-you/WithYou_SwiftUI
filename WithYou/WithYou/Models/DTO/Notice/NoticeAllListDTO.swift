//
//  NoticeAllListDTO.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation

/// 해당 TravelPod의 모든 Notice 조회 응답 DTO
struct NoticeAllListResponseDTO: Codable, Identifiable {
    var id: UUID = .init()
    var noticeId: Int
    var url: String
    var name: String
    var content: String
    var checkNum: Int
    var checked: Bool
    
    enum CodingKeys: String, CodingKey {
        case noticeId
        case url
        case name
        case content
        case checkNum
        case checked
    }
}
