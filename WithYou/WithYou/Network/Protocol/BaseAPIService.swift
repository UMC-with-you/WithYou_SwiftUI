//
//  BaseAPIService.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import CombineMoya
import Moya
import Combine

protocol BaseAPIService {
    associatedtype Target: TargetType
    
    var provider: MoyaProvider<Target> { get }
    var decoder: JSONDecoder { get }
    var callbackQueue: DispatchQueue { get }
}
extension BaseAPIService {
    func request<T: Decodable>(_ target: Target) -> AnyPublisher<ResponseData<T>, MoyaError> {
        provider.requestPublisher(target)
            .filterSuccessfulStatusCodes()
            .map(ResponseData<T>.self, using: decoder)
            .receive(on: callbackQueue)
            .eraseToAnyPublisher()
    }

    func requestNoDTO<T: Decodable>(_ target: Target) -> AnyPublisher<T, MoyaError> {
        provider.requestPublisher(target)
            .filterSuccessfulStatusCodes()
            .map(T.self, using: decoder)
            .receive(on: callbackQueue)
            .eraseToAnyPublisher()
    }
}
