//
//  AuthUseCase.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation
import Combine

class AuthUseCase: AuthUseCaseProtocol {

    private let service: AuthServiceProtocol

    init(service: AuthServiceProtocol = AuthService()) {
        self.service = service
    }

    /// 로그인
    func executeLogin(loginRequest: LoginRequest) -> AnyPublisher<ResponseData<LoginResponse?>, Moya.MoyaError> {
        return service.login(loginRequest: loginRequest)
    }

    /// Access Token 재발급
    func executeRefreshToken(refreshRequest: RefreshTokenRequest) -> AnyPublisher<ResponseData<RefreshTokenResponse?>, Moya.MoyaError> {
        return service.refreshToken(refreshRequest: refreshRequest)
    }
}