//
//  TravelInviteDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 여행 팟 합류
struct TravelCombinationRequest: Codable {
    let invitationCode: String
}

struct TravelInviteResponse: Codable {
    let memberId: Int
    let travelId: Int
}
