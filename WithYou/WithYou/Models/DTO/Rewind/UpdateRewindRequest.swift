//
//  UpdateRewindRequest.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

struct UpdateRewindRequest: Codable {
    var mvpCandidateId: Int
    var mood: String
    var qnaList: [UpdateRewindAnswer]
    var comment: String
}

struct UpdateRewindAnswer: Codable {
    var qnaId: Int
    var questionId: Int
    var content: String
    var answer: String
}
