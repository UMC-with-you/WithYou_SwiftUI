//
//  RewindModifyDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct RewindModifyRequest: Codable {
    let mvpCandidateId: Int
    let mood: RewindMoodType
    let qnaList: [QnAData]
    let comment: String
}

struct RewindModifyResponse: Codable {
    let rewindId: Int
    let createdAt: String
    let updatedAt: String
}
