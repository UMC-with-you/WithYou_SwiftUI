//
//  TravelPodAPITarget.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation
import Moya

enum TravelPodAPITarget {
    case getAllTravelPod
    case addTravelPod(request: TravelPodRequest)
    case deleteTravelPod(travelId: Int)
    case editTravelPod(travelId: Int, request: TravelPodRequest)
    case leaveTravelPod(travelId: Int, memberId: Int)
}

extension TravelPodAPITarget: APITargetType {
    var path: String {
        switch self {
        case .getAllTravelPod, .addTravelPod:
            return "/travels"
        case .deleteTravelPod(let travelId), .editTravelPod(let travelId, _):
            return "/travels/\(travelId)"
        case .leaveTravelPod(let travelId, let memberId):
            return "/travels/\(travelId)/members/\(memberId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getAllTravelPod: return .get
        case .addTravelPod: return .post
        case .deleteTravelPod: return .delete
        case .editTravelPod, .leaveTravelPod: return .patch
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getAllTravelPod, .leaveTravelPod, .deleteTravelPod:
            return .requestPlain
        case .editTravelPod(_, let request), .addTravelPod(let request):
            return .requestJSONEncodable(request)
       }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
