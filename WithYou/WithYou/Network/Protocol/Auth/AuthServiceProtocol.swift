//
//  AuthServiceProtocol.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation
import Combine
import Moya

protocol AuthServiceProtocol {
    func login(loginRequest: LoginRequest) -> AnyPublisher<ResponseData<LoginResponse?>, Moya.MoyaError>
    func refreshToken(refreshRequest: RefreshTokenRequest) -> AnyPublisher<ResponseData<RefreshTokenResponse?>, Moya.MoyaError>
}