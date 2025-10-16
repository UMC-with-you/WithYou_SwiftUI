//
//  MemberRouter.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation
import Moya

enum MemberRouter {
    /// 회원 가입
    case postMemberRegister(registerRequest: RegisterMemberRequest)
    /// 회원 이름 변경
    case patchMemberName(updateNameRequest: UpdateNameRequest)
    /// 회원 정보 조회
    case getMemberInfo
    /// 회원 탈퇴
    case deleteMember(deleteRequest: DeleteMemberRequest)
    /// 이미지 업데이트 프리사인드 URL 발급
    case getMemberImage
}

extension MemberRouter: APITargetType {
    var path: String {
        switch self {
        case .postMemberRegister:
            return "/api/v1/member/register"
        case .patchMemberName:
            return "/api/v1/member/name"
        case .getMemberInfo:
            return "/api/v1/member"
        case .deleteMember:
            return "/api/v1/member"
        case .getMemberImage:
            return "/api/v1/member/image"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .postMemberRegister:
            return .post
        case .patchMemberName:
            return .patch
        case .getMemberInfo, .getMemberImage:
            return .get
        case .deleteMember:
            return .delete
        }
    }
    
    var task: Task {
        switch self {
        case .postMemberRegister(let registerRequest):
            return .requestJSONEncodable(registerRequest)
        case .patchMemberName(let updateNameRequest):
            return .requestJSONEncodable(updateNameRequest)
        case .deleteMember(let deleteRequest):
            return .requestJSONEncodable(deleteRequest)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
