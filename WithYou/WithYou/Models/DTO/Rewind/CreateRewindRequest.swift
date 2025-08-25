//
//  CreateRewindRequest.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation

struct CreateRewindRequest: Codable {
    var day: Int
    var mvpCandidateId: Int
    var mood: String
    var qnaList: [RewindAnswer]
}

struct RewindAnswer: Codable {
    var qestionId: Int
    var answer: String
}


