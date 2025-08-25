//
//  JoinTravelPodRequest.swift
//  WithYou
//
//  Created by 배수호 on 8/14/25.
//

import Foundation

/// 여행 팟 합류 요청 DTO
struct JoinTravelPodRequest: Codable {
    var invitationCode: String
}

// MARK: - 사용 예시
/*
 // PATCH: 여행 팟 합류
 let sampleJoinTravelPodRequest = JoinTravelPodRequest(
    invitationCode = "12345"
 )
*/
