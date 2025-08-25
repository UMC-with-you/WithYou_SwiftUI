//
//  PostSingleDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct PostSingleRequest: Codable {
    let travelId: Int
}

struct PostSingleResponse: Codable {
    let postId: Int
    let memberId: Int
    let text: String
    let postMediaDTO: [PostMediaDTO]
    let commentDTOs: [CommentDTO]
}

// MARK: - Post Media
struct PostMediaDTO: Codable {
    let postMediaId: Int
    let url: String
    let position: Int
}

// MARK: - Comment
struct CommentDTO: Codable {
    let commentId: Int
    let member: MemberDTO
    let content: String
    let replyDTOs: [ReplyDTO]
}

// MARK: - Member
struct MemberDTO: Codable {
    let createdAt: String
    let updatedAt: String
    let id: Int
    let email: String
    let identifier: String
    let name: String
    let memberType: MemberType
    let profileImageKey: String
}

// MARK: - Reply
struct ReplyDTO: Codable {
    let replyId: Int
    let memberId: Int
    let content: String
}
