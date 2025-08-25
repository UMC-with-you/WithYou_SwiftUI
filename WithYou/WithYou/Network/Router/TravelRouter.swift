//
//  TravelRouter.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Moya

enum TravelRouter {
    /// 모든 여행 팟 조회
    case getTravelAllList
    /// 여행 팟 삭제
    case deleteTravelPod(travelId: Int)
    /// 여행 팟 수정
    case patchTravelPod(travelId: Int, pod: TravelPatchRequest)
    /// 여행 팟 멤버 추방
    case patchTravelOutMember(travelId: Int, memberId: Int)
    /// 여행 팟 합류
    case patchCombination(combination: TravelCombinationRequest)
    /// 여행 팟에 포함된 모든 멤버 조회
    case getTravelAllMember(travelId: Int)
    /// 여행 팟의 초대 코드 조회
    case getTravelInviteCode(travelId: Int)
}

extension TravelRouter: APITargetType {
    var path: String {
        switch self {
        case .getTravelAllList:
            return "/api/v1/travels"
        case .deleteTravelPod(let travelId):
            return "/api/v1/\(travelId)"
        case .patchTravelPod(let travelId, _):
            return "/api/v1/\(travelId)"
        case .patchTravelOutMember(let travelId, let memberId):
            return "/api/v1/travels/\(travelId)/members/\(memberId)"
        case .patchCombination:
            return "/api/v1/travels/members"
        case .getTravelAllMember(let travelId):
            return "/api/v1/travels/\(travelId)/members"
        case .getTravelInviteCode(let travelId):
            return "/api/v1/travels/\(travelId)/invitation_code"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getTravelAllMember, .getTravelInviteCode:
            return .get
        case .deleteTravelPod:
            return .delete
        default:
            return .patch
        }
    }
    
    var task: Task {
        switch self {
        case .patchTravelPod(_, let pod):
            return .requestJSONEncodable(pod)
        case .patchCombination(let combination):
            return .requestJSONEncodable(combination)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
