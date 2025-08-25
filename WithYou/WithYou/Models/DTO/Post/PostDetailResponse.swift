//
//  PostDetailResponse.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation

struct PostDetailResponse: Codable, Identifiable {
    var id: Int
    var memberId: Int
    var text: String
    var postMediaDTO: [PostMedia]
    var commentDTOs: [PostComment]
    
    enum CodingKeys: String, CodingKey {
        case id = "postId"
        case memberId
        case text
        case postMediaDTO = "postMediaDTO"
        case commentDTOs = "commentsDTOs"
    }
}

struct PostMedia: Codable {
    var postMediaId: Int
    var url: String
    var position: Int
}

struct PostComment: Codable {
    var commentId: Int
    var member: PostMember
    var content: String
    var replyDTOs: [PostReply]
}

struct PostReply: Codable {
    var replyId: Int
    var memberId: Int
    var content: String
}

struct PostMember: Codable {
    var createdAt: String
    var updatedAt: String
    var id: Int
    var email: String
    var identifier: String
    var name: String
    var memberType: MemberType
    var profileImageKey: String
}

enum MemberType: String, Codable {
    case basicUser = "BASIC_USER"
    case administrator = "ADMINISTRATOR"
}
