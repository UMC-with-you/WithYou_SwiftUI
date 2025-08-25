//
//  TravelPodRequest.swift
//  WithYou
//
//  Created by 배수호 on 8/10/25.
//

import Foundation

/// 여행 팟 생성/수정 요청 DTO
struct TravelPodRequest: Encodable {
    let title: String
    let localDate: String
    let startDate: String
    let endDate: String
}

/// 여행 팟 수정 시 사용하는 래퍼 DTO
/// 서버 스펙: { "request": { ...TravelPodRequest } }
struct UpdateTravelPodWrapper: Encodable {
    let request: TravelPodRequest
}

// MARK: - 사용 예시
/*
 // POST: 여행 팟 생성
 let createRequest = TravelPodRequest(
     title: "제주도 여행",
     localDate: "2025-08-14",
     startDate: "2025-08-14",
     endDate: "2025-08-20"
 )

 // PATCH: 여행 팟 수정
 let updateRequest = UpdateTravelPodWrapper(
     request: createRequest
 )
*/
