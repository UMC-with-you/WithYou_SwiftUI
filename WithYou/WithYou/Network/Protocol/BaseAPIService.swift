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
    var callback: DispatchQueue { get }
}
extension BaseAPIService {
    func request<T: Decodable>(_ target: Target) -> AnyPublisher<ResponseDTO<T>, MoyaError> {
        provider.requestPublisher(target)
            .filterSuccessfulStatusCodes()
            .map(ResponseDTO<T>.self, using: decoder)
            .receive(on: callback)
            .eraseToAnyPublisher()
    }
}
