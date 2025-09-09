//
//  NoticeRouter.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum NoticeRouter {
    /// notice 생성 (0: 여행전, 1: 여행중, 2: 여행후)
    case postCreateNotice(noticeRequest: CreateNoticeRequestDTO)
    /// notice 수정
    case patchNotice(noticeRequest: UpdateNoticeRequestDTO)
    /// travelLog에 따른 notice 모두 조회
    case getNoticesByTravelLog(travelId: Int, listRequest: NoticeAllListRequestDTO)
    /// state(날짜/상태)에 따른 notice 모두 조회
    case getNoticesByDate(travelId: Int, listRequest: NoticeAllListRequestDTO)
    /// notice 삭제
    case deleteNotice(noticeId: Int)
    /// notice 체크
    case patchNoticeCheck(checkRequest: NoticeCheckRequestDTO)
}

extension NoticeRouter: APITargetType {
    var path: String {
        switch self {
        case .postCreateNotice:
            return "/api/v1/notice"
        case .patchNotice:
            return "/api/v1/notice"
        case .getNoticesByTravelLog(let travelId, _):
            return "/api/v1/notice/logs/\(travelId)"
        case .getNoticesByDate(let travelId, _):
            return "/api/v1/notice/date/\(travelId)"
        case .deleteNotice(let noticeId):
            return "/api/v1/notice/\(noticeId)"
        case .patchNoticeCheck:
            return "/api/v1/noticeCheck"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .postCreateNotice:
            return .post
        case .patchNotice, .patchNoticeCheck:
            return .patch
        case .deleteNotice:
            return .delete
        default:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .postCreateNotice(let request):
            return .requestJSONEncodable(request)
        case .patchNotice(let request):
            return .requestJSONEncodable(request)
        case .getNoticesByTravelLog(_, let listRequest):
            return .requestJSONEncodable(listRequest)
        case .getNoticesByDate(_, let listRequest):
            return .requestJSONEncodable(listRequest)
        case .patchNoticeCheck(let checkRequest):
            return .requestJSONEncodable(checkRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
