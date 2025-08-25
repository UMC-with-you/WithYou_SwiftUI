//
//  TravelPodServiceProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/16/25.
//

import Foundation
import Combine
import Moya

protocol TravelPodServiceProtocol {
    func getAllTravelPodData() -> AnyPublisher<ResponseData<TravelPod>, MoyaError>
    func addTravelPodData(request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func deleteTravelPodData(travelId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func editTravelPodData(travelId: Int, request: TravelPodRequest) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
    func leaveTravelPodData(travelId: Int, memberId: Int) -> AnyPublisher<ResponseData<EmptyResponse>, MoyaError>
}
