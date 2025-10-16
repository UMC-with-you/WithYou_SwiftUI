//
//  AuthUseCaseProtocol.swift
//  WithYou
//
//  Created by suho on 9/25/25.
//

import Foundation
import Combine
import Moya

protocol AuthUseCaseProtocol {
    func executeLogin(loginRequest: LoginRequest) -> AnyPublisher<ResponseData<LoginResponse?>, Moya.MoyaError>
    func executeRefreshToken(refreshRequest: RefreshTokenRequest) -> AnyPublisher<ResponseData<RefreshTokenResponse?>, Moya.MoyaError>
}