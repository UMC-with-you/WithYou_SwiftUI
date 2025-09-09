//
//  TravelCreateDTO.swift
//  WithYou
//
//  Created by 배수호 on 9/5/25.
//

import Foundation

/// 여행 팟 생성 요청 DTO
struct TravelCreateRequest: Codable {
    let title: String
    let localDate: String
    let startDate: String
    let endDate: String
}

/// 여행 팟 생성 응답 DTO
struct TravelCreateResponse: Codable {
    let url: String
}


