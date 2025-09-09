//
//  TravelUseCaseProtocol.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol TravelUseCaseProtocol {
    func getTravelAllList(listRequest: TravelAllListRequest) -> AnyPublisher<ResponseDTO<[TravelAllListResponse]?>, MoyaError>
    func postTravelCreate(podRequest: TravelCreateRequest) -> AnyPublisher<ResponseDTO<TravelCreateResponse?>, MoyaError>
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseDTO<TravelDeleteResponse?>, MoyaError>
    func patchTravelPod(travelId: Int, podRequest: TravelPatchRequest) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError>
    func patchTravelOutMember(travelId: Int, memberId: Int) -> AnyPublisher<ResponseDTO<TravelOutResponse?>, MoyaError>
    func patchCombination(combination: TravelCombinationRequest) ->  AnyPublisher<ResponseDTO<TravelCombinationResponse?>, MoyaError>
    func getTravelAllMember(travelId: Int) -> AnyPublisher<ResponseDTO<TravelAllMemberResponse?>, MoyaError>
    func getTravelInviteCode(travelId: Int) -> AnyPublisher<ResponseDTO<TravelInviteCodeResponse?>, MoyaError>
}
