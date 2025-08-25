//
//  APIManager.swift
//  WithYou
//
//  Created by 배수호 on 8/16/25.
//

import Foundation
import Moya

class APIManager: @unchecked Sendable {
    static let shared = APIManager()
    
    public func createTestProvider<T: TargetType>(for targetType: T.Type) -> MoyaProvider<T> {
        let authPlugin = AccessTokenPlugin { _ in
            return "SUPER_DUPER_ADMIN_TOKEN"
        }
        return MoyaProvider<T>(stubClosure: MoyaProvider.immediatelyStub, plugins: [authPlugin])
    }
    
    public func createProvider<T: TargetType>(for targetType: T.Type, superToken: String) -> MoyaProvider<T> {
        let authPlugin = AccessTokenPlugin { _ in
            return superToken
        }
        return MoyaProvider<T>(stubClosure: MoyaProvider.immediatelyStub, plugins: [authPlugin])
    }
    
    lazy var decoder: JSONDecoder = {
        let d = JSONDecoder()
        d.keyDecodingStrategy = .convertFromSnakeCase
        return d
    }()
}
