//
//  TravelAllMemberDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 여행 팟에 포함된 모든 멤버 조회
struct TravelAllMemberResponse: Codable {
    let memberId: Int
    let name: String
    let imageUrl: String
}
