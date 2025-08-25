//
//  TravelPodService.swift
//  WithYou
//
//  Created by 배수호 on 8/16/25.
//

import Foundation
import Moya
import Combine
import CombineMoya

class TravelPodService: TravelPodServiceProtocol {
    private let provider: MoyaProvider<TravelPodAPITarget>
    
    init(provider: MoyaProvider<TravelPodAPITarget> = APIManager.shared.createTestProvider(for: TravelPodAPITarget.self)
    ) {
        self.provider = provider
    }
    
    func getAllTravelPodData() -> AnyPublisher<ResponseData<TravelPod>, Moya.MoyaError> {
        return provider.requestPublisher(.getAllTravelPod)
            .map(ResponseData<TravelPod>.self)
            .eraseToAnyPublisher()
    }
    
    func addTravelPodData(request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return provider.requestPublisher(.addTravelPod(request: request)).map(ResponseData<EmptyResponse>.self).eraseToAnyPublisher()
    }
    
    func deleteTravelPodData(travelId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return provider.requestPublisher(.deleteTravelPod(travelId: travelId)).map(ResponseData<EmptyResponse>.self).eraseToAnyPublisher()
    }
    
    func editTravelPodData(travelId: Int, request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return provider.requestPublisher(.editTravelPod(travelId: travelId, request: request)).map(ResponseData<EmptyResponse>.self).eraseToAnyPublisher()
    }
    
    func leaveTravelPodData(travelId: Int, memberId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return provider.requestPublisher(.leaveTravelPod(travelId: travelId, memberId: memberId)).map(ResponseData<EmptyResponse>.self).eraseToAnyPublisher()
    }
    
    
}
