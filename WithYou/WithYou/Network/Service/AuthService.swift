//
//  AuthService.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation
import Moya
import Combine

class AuthService: AuthServiceProtocol, BaseAPIService {
    typealias Target = AuthRouter

    var provider: MoyaProvider<Target>
    var decoder: JSONDecoder
    var callbackQueue: DispatchQueue

    init(
        provider: MoyaProvider<Target> = APIManager.shared.createTestProvider(for: Target.self),
        decoder: JSONDecoder = APIManager.shared.decoder,
        callbackQueue: DispatchQueue = .main
    ) {
        self.provider = provider
        self.decoder = decoder
        self.callbackQueue = callbackQueue
    }

    func login(loginRequest: LoginRequest) -> AnyPublisher<ResponseData<LoginResponse?>, Moya.MoyaError> {
        request(.postLogin(loginRequest: loginRequest))
    }

    func refreshToken(refreshRequest: RefreshTokenRequest) -> AnyPublisher<ResponseData<RefreshTokenResponse?>, Moya.MoyaError> {
        request(.postRefreshToken(refreshRequest: refreshRequest))
    }
}