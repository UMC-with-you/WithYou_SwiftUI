//
//  TravelPatchPodDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

// FIXME: - 추후 멀티 파트폼으로 개선 후 수정 필요
/// 여행 팟 수정
struct TravelPatchRequest: Codable {
    let request: TravelPatchData
}

/// 여행 팟 수정 내부 데이터
struct TravelPatchData: Codable {
    let title: String
    let startDate: String
    let endDate: String
    let localDaste: String
}
