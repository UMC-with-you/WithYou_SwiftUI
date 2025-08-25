//
//  TravelInviteCodeDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 여행 팟의 초대 코드 조회
struct TravelInviteCodeResponse: Codable {
    let travelId: Int
    let invitationCode: String
}
