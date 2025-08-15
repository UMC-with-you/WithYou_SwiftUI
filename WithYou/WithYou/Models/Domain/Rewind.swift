//
//  Rewind.swift
//  WithYou
//
//  Created by 배수호 on 8/14/25.
//

import Foundation

struct Rewind: Codable {
    var rewindId: Int
    var day: Int
    var writerId: Int
    var mvpCandidateId: Int
    var mood: String
    var comment: String
    var rewindQnaList: [RewindQna]
    var createdAt: String
    var updatedAt: String
}

struct RewindQna: Codable {
    let qnaId: Int
    let questionId: Int
    let content: String
    let answer: String
}
