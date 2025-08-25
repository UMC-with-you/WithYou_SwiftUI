//
//  TravelPodRepositoryProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/16/25.
//

import Foundation
import Combine
import Moya

protocol TravelPodRepositoryProtocol {
    func getAllTravelPod() -> AnyPublisher<ResponseData<TravelPod>, MoyaError>
    func addTravelPod(request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func editTravelPod(travelId: Int, request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func leaveTravelPod(travelId: Int, memberId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
}
