//
//  TravelUseCase.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Combine
import Moya

class TravelUseCase: TravelUseCaseProtocol {
    
    let service: TravelServiceProtocol
    
    init(service: TravelServiceProtocol = TravelService()) {
        self.service = service
    }
    
    func getTravelAllList(listRequest: TravelAllListRequest) -> AnyPublisher<ResponseDTO<[TravelAllListResponse]?>, Moya.MoyaError> {
        service.getTravelAllList(listRequest: listRequest)
    }
    
    func postTravelCreate(podRequest: TravelCreateRequest) -> AnyPublisher<ResponseDTO<TravelCreateResponse?>, Moya.MoyaError> {
        service.postTravelCreate(podRequest: podRequest)
    }
    
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseDTO<TravelDeleteResponse?>, Moya.MoyaError> {
        service.deleteTravelPod(travelId: travelId)
    }
    
    func patchTravelPod(travelId: Int, podRequest: TravelPatchRequest) -> AnyPublisher<ResponseDTO<EmptyResponse>, Moya.MoyaError> {
        service.patchTravelPod(travelId: travelId, podRequest: podRequest)
    }
    
    func patchTravelOutMember(travelId: Int, memberId: Int) -> AnyPublisher<ResponseDTO<TravelOutResponse?>, Moya.MoyaError> {
        service.patchTravelOutMember(travelId: travelId, memberId: memberId)
    }
    
    func patchCombination(combination: TravelCombinationRequest) -> AnyPublisher<ResponseDTO<TravelCombinationResponse?>, Moya.MoyaError> {
        service.patchCombination(combination: combination)
    }
    
    func getTravelAllMember(travelId: Int) -> AnyPublisher<ResponseDTO<TravelAllMemberResponse?>, Moya.MoyaError> {
        service.getTravelAllMember(travelId: travelId)
    }
    
    func getTravelInviteCode(travelId: Int) -> AnyPublisher<ResponseDTO<TravelInviteCodeResponse?>, Moya.MoyaError> {
        service.getTravelInviteCode(travelId: travelId)
    }
}
