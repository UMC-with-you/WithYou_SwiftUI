//
//  TravelPodRepository.swift
//  WithYou
//
//  Created by 배수호 on 8/16/25.
//

import Foundation
import Combine
import Moya

class TravelPodRepository: TravelPodRepositoryProtocol {
    private let travelPodService: TravelPodServiceProtocol
    
    init(travelPodService: TravelPodServiceProtocol = TravelPodService()) {
        self.travelPodService = travelPodService
    }
    
    func getAllTravelPod() -> AnyPublisher<ResponseData<TravelPod>, Moya.MoyaError> {
        return travelPodService.getAllTravelPodData()
    }
    
    func addTravelPod(request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return travelPodService.addTravelPodData(request: request)
    }
    
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return travelPodService.deleteTravelPodData(travelId: travelId)
    }
    
    func editTravelPod(travelId: Int, request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return travelPodService.editTravelPodData(travelId: travelId, request: request)
    }
    
    func leaveTravelPod(travelId: Int, memberId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, Moya.MoyaError> {
        return travelPodService.leaveTravelPodData(travelId: travelId, memberId: memberId)
    }
    
    
}
