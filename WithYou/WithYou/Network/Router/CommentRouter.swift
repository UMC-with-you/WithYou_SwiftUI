//
//  CommentRouter.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum CommentRouter {
    /// 게시글 댓글 작성
    case postCreateComment(postId: Int, commentRequest: CreateCommentRequestDTO)
    /// 게시글 댓글 삭제
    case deleteComment(commentId: Int)
    /// 게시글 댓글 수정
    case patchComment(commentId: Int, commentRequest: UpdateCommentRequestDTO)
}

extension CommentRouter: APITargetType {
    var path: String {
        switch self {
        case .postCreateComment(let postId, _):
            return "/api/v1/posts/\(postId)/comments"
        case .deleteComment(let commentId):
            return "/api/v1/comments/\(commentId)"
        case .patchComment(let commentId, _):
            return "/api/v1/comments/\(commentId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .postCreateComment:
            return .post
        case .deleteComment:
            return .delete
        case .patchComment:
            return .patch
        }
    }
    
    var task: Task {
        switch self {
        case .postCreateComment(_, let request):
            return .requestJSONEncodable(request)
        case .patchComment(_, let request):
            return .requestJSONEncodable(request)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
