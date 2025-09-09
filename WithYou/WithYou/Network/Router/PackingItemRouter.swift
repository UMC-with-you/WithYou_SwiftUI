//
//  PackingItemRouter.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya

enum PackingItemRouter {
    /// 짐 목록 조회
    case getPackingAllList(travelId: Int)
    /// 짐 목록 추가
    case postPackingAdd(travelId: Int, packingRequest: PackingAddRequest)
    /// 짐 목록 제거
    case deletePackingItem(packingItemId: Int)
    /// 짐 패킹 체크박스 토글
    case patchPackingCheck(packingItemId: Int)
    /// 짐 목록 담당자 지정
    case patchPackingAdmin(packingItemId: Int, adminRequest: PackingAdminRequest)
}

extension PackingItemRouter: APITargetType {
    var path: String {
        switch self {
        case .getPackingAllList(let travelId):
            return "/api/v1/travels/\(travelId)/packing_items"
        case .postPackingAdd(let travelId, _):
            return "/api/v1/travels/\(travelId)/packing_items"
        case .deletePackingItem(let packingItemId):
            return "/api/v1/packing_items/\(packingItemId)"
        case .patchPackingCheck(let packingItemId):
            return "/api/v1/packing_items/\(packingItemId)"
        case .patchPackingAdmin(let packingItemId, _):
            return "/api/v1/packing_items/\(packingItemId)/packer_choice"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getPackingAllList:
            return .get
        case .postPackingAdd:
            return .post
        case .deletePackingItem:
            return .delete
        case .patchPackingCheck, .patchPackingAdmin:
            return .patch
        }
    }
    
    var task: Task {
        switch self {
        case .postPackingAdd(_, let packingRequest):
            return .requestJSONEncodable(packingRequest)
        case .patchPackingAdmin(_, let adminRequest):
            return .requestJSONEncodable(adminRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}

