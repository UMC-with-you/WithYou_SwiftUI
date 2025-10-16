//
//  AuthRouter.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation
import Moya

enum AuthRouter {
    /// 로그인
    case postLogin(loginRequest: LoginRequest)
    /// Access Token 재발급
    case postRefreshToken(refreshRequest: RefreshTokenRequest)
}

extension AuthRouter: APITargetType {
    var path: String {
        switch self {
        case .postLogin:
            return "/api/v1/auth"
        case .postRefreshToken:
            return "/api/v1/auth/refresh"
        }
    }

    var method: Moya.Method {
        switch self {
        case .postLogin, .postRefreshToken:
            return .post
        }
    }

    var task: Task {
        switch self {
        case .postLogin(let loginRequest):
            return .requestJSONEncodable(loginRequest)
        case .postRefreshToken(let refreshRequest):
            return .requestJSONEncodable(refreshRequest)
        }
    }

    var headers: [String : String]? {
        var headers = ["Content-Type": "application/json"]

        switch self {
        case .postRefreshToken(let refreshRequest):
            headers["RefreshToken"] = "Bearer \(refreshRequest.refreshToken)"
        default:
            break
        }
        return headers
    }
}