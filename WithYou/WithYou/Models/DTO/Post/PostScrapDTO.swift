//
//  PostScrap.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

/// 포스트 스크랩
struct PostScrapResponse: Codable {
    let postId: Int
    let isScraped: Bool
}
