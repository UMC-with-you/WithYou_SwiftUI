//
//  ValidationResult.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Combine
import Moya

extension Publisher where Failure == MoyaError {
    func validationResult<T>(
        onFailureAction: (() -> Void)? = nil
    ) -> AnyPublisher<T, MoyaError> where Output == ResponseDTO<T> {
        self.tryMap { response in
            guard response.isSuccess else {
                throw MoyaError.underlying(APIError.serverError, nil)
            }
            
            guard let result = response.result else {
                throw MoyaError.underlying(APIError.emptyResult, nil)
            }
            
            return result
        }
        .mapError { error in
            if let moyaError = error as? MoyaError {
                return moyaError
            } else {
                return MoyaError.underlying(error, nil)
            }
        }
        .handleEvents(receiveCompletion: { completion in
            guard case .failure = completion else { return }
            if let actoin = onFailureAction {
                if Thread.isMainThread {
                    actoin()
                } else {
                    DispatchQueue.main.async {
                        actoin()
                    }
                }
            }
        })
        .eraseToAnyPublisher()
    }
}
