//
//  TravelAllPod.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 여행 팟 조회 응답 모델
struct TravelAllListResponse: Codable, Identifiable {
    var id: UUID = .init()
    var travelId: Int
    var title: String
    var startDate: String
    var endDate: String
    var status: TravelStatus
    var imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case travelId
        case title
        case startDate
        case endDate
        case status
        case imageUrl
    }
}



