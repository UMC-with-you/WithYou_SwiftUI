//
//  TravelPod.swift
//  WithYou
//
//  Created by 배수호 on 8/10/25.
//

import Foundation

enum TravelStatus: String, Codable {
    case before = "BEFORE"
    case onogoing = "ONGOING"
    case after = "AFTER"
}

/// 여행 팟 조회 응답 모델
struct TravelPod: Codable, Identifiable {
    var id: Int
    var title: String
    var startDate: String
    var endDate: String
    var status: TravelStatus
    var imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "travelId"
        case title
        case startDate
        case endDate
        case status
        case imageUrl
    }
}


// MARK: - 사용 예시
/*
 let sampleTravelPod = TravelPod(
     id: 1,
     title: "부산 여행",
     startDate: "2025-08-10",
     endDate: "2025-08-14",
     status: "BEFORE",
     imageUrl: "https://example.com/image.jpg"
 )
*/
