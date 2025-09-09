//
//  RewindRouter.swift
//
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum RewindRouter {
    /// Rewind 목록 조회
    case getRewindAllList(travelId: Int, day: RewindListRequest)
    /// Rewind 작성
    case postRewind(travelId: Int, rewindRequest: RewindWriteRequest)
    /// Rewind 단건 조회
    case getRewind(travelId: Int, rewindId: Int)
    /// Rewind 삭제
    case deleteRewind(travelId: Int, rewindId: Int)
    /// Rewind 수정
    case patchRewind(travelId: Int, rewindId: Int, rewindRequest: RewindModifyRequest)
    /// Rewind Qeustion 목록 조회
    case getRewindQeustionList
}

extension RewindRouter: APITargetType {
    var path: String {
        switch self {
        case .getRewindAllList(let travelId, _):
            return "/api/v1/travels/\(travelId)/rewinds"
        case .postRewind(let travelId, _):
            return "/api/v1/travels/\(travelId)/rewinds"
        case .getRewind(let travelId, let rewindId):
            return "/api/v1/travels/\(travelId)/rewinds/\(rewindId)"
        case .deleteRewind(let travelId, let rewindId):
            return "/api/v1/travels/\(travelId)/rewinds/\(rewindId)"
        case .patchRewind(let travelId, let rewindId, _):
            return "/api/v1/travels/\(travelId)/rewinds/\(rewindId)"
        case .getRewindQeustionList:
            return "/api/v1/rewindQuestions"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .postRewind:
            return .post
        case .deleteRewind:
            return .delete
        case .patchRewind:
            return .patch
        default:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getRewindAllList(_, let day):
            return .requestJSONEncodable(day)
        case .postRewind(_, let rewindRequest):
            return .requestJSONEncodable(rewindRequest)
        case .patchRewind(_, _, let rewindRequest):
            return .requestJSONEncodable(rewindRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
