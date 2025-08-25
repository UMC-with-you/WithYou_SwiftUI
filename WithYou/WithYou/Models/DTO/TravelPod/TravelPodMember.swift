//
//  TravelPodMember.swift
//  WithYou
//
//  Created by 배수호 on 8/14/25.
//

import Foundation

/// 여행 팟 멤버 응답 조회 DTO
struct TravelPodMember: Codable, Identifiable {
    var id: Int
    var name: String
    var imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "member_id"
        case name
        case imageUrl
    }
}

// MARK: - 사용 예시
/*
 // GET /api/v1/travels/{travelId}/members
 let exampleResponse = ResponseData<[TravelPodMember]>(
     isSuccess: true,
     code: "200",
     message: "OK",
     result: [
         TravelPodMember(id: 1, name: "홍길동", imageUrl: "https://example.com/profile1.jpg"),
         TravelPodMember(id: 2, name: "김철수", imageUrl: "https://example.com/profile2.jpg")
     ]
 )
*/
