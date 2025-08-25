//
//  RewindWriteDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// Rewind 작성
struct RewindWriteRequest: Codable {
    let day: Int
    let mvpCandidateId: Int
    let mood: RewindMoodType
    let qnaList: [QnAData]
    let comment: String
}

struct QnAData: Codable {
    let questionId: Int
    let answer: String
}

struct RewindWriteResponse: Codable {
    let rewindId: Int
    let createdAt: String
}
