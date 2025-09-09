//
//  ReplyRouter.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum ReplyRouter {
    /// 대댓글 추가
    case postCreateReply(commentId: Int, replyRequest: CreateReplyRequestDTO)
    /// 대댓글 삭제
    case deleteReply(replyId: Int)
    /// 대댓글 수정
    case patchReply(replyId: Int, replyRequest: UpdateReplyRequestDTO)
}

extension ReplyRouter: APITargetType {
    var path: String {
        switch self {
        case .postCreateReply(let commentId, _):
            return "/api/v1/comments/\(commentId)/replies"
        case .deleteReply(let replyId):
            return "/api/v1/replies/\(replyId)"
        case .patchReply(let replyId, _):
            return "/api/v1/replies/\(replyId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .postCreateReply:
            return .post
        case .deleteReply:
            return .delete
        case .patchReply:
            return .patch
        }
    }
    
    var task: Task {
        switch self {
        case .postCreateReply(_, let replyRequest):
            return .requestJSONEncodable(replyRequest)
        case .patchReply(_, let replyRequest):
            return .requestJSONEncodable(replyRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
