//
//  PostRouter.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum PostRouter {
    /// 여행 로그에 해당하는 모든 포스트 조회
    case getPostAllList(travelId: Int)
    /// 게시글 작성
    case postWrite(travelId: Int, postRequest: PostWriteRequest)
    /// 게시글 단건 조회
    case getPost(postId: Int, postSingleRequest: PostSingleRequest)
    /// 스크랩
    case postScrap(postId: Int)
    /// 게시글 삭제
    case deletePost(postId: Int)
    /// 게시글 수정
    case patchPost(postId: Int, postRequest: PostModifyRequest)
    /// 회원이 스크랩한 모든 게시글 조회
    case getScrapedPosts
}

extension PostRouter: APITargetType {
    var path: String {
        switch self {
        case .getPostAllList(let travelId):
            return "/api/v1/travels/\(travelId)/posts"
        case .postWrite(let travelId, _):
            return "/api/v1/travels/\(travelId)/posts"
        case .getPost(let postId, _):
            return "/api/v1/posts/\(postId)"
        case .postScrap(let postId):
            return "/api/v1/posts/\(postId)"
        case .deletePost(let postId):
            return "/api/v1/posts/\(postId)"
        case .patchPost(let postId, _):
            return "/api/v1/posts/\(postId)"
        case .getScrapedPosts:
            return "/api/v1/posts"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getPostAllList, .getPost, .getScrapedPosts:
            return .get
        case .postWrite, .postScrap:
            return .post
        case .deletePost:
            return .delete
        case .patchPost:
            return .patch
        }
    }
    
    var task: Task {
        switch self {
        case .postWrite(_, let postRequest):
            return .requestJSONEncodable(postRequest)
        case .getPost(_, let postSingleRequest):
            return .requestJSONEncodable(postSingleRequest)
        case .patchPost(_, let postRequest):
            return .requestJSONEncodable(postRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
