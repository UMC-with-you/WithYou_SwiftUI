//
//  PostAllListDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 여행 로그 모든 포스트 조회
struct PostAllListResponse: Codable, Identifiable {
    var id: UUID = .init()
    let travelId: Int
    let title: String
    let startDate: String
    let endDate: String
    let status: TravelStatus
    let imageUrl: String
    
    enum CodingKeys: CodingKey {
        case travelId
        case title
        case startDate
        case endDate
        case status
        case imageUrl
    }
}
