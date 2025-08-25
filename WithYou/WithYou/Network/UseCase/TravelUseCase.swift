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
    
    func getTravelAllList() -> AnyPublisher<ResponseDTO<[TravelAllListResponse]>, Moya.MoyaError> {
        service.getTravelAllList()
    }
    
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseDTO<TravelDeleteResponse>, Moya.MoyaError> {
        service.deleteTravelPod(travelId: travelId)
    }
    
    func patchTravelPod(travelId: Int, pod: TravelPatchRequest) -> AnyPublisher<ResponseDTO<EmptyResponse>, Moya.MoyaError> {
        service.patchTravelPod(travelId: travelId, pod: pod)
    }
    
    func patchTravelOutMember(travelId: Int, memberId: Int) -> AnyPublisher<ResponseDTO<TravelOutResponse>, Moya.MoyaError> {
        service.patchTravelOutMember(travelId: travelId, memberId: memberId)
    }
    
    func patchCombination(combination: TravelCombinationRequest) -> AnyPublisher<ResponseDTO<TravelCombinationResponse>, Moya.MoyaError> {
        service.patchCombination(combination: combination)
    }
    
    func getTravelAllMember(travelId: Int) -> AnyPublisher<ResponseDTO<TravelAllMemberResponse>, Moya.MoyaError> {
        service.getTravelAllMember(travelId: travelId)
    }
    
    func getTravelInviteCode(travelId: Int) -> AnyPublisher<ResponseDTO<TravelInviteCodeResponse>, Moya.MoyaError> {
        service.getTravelInviteCode(travelId: travelId)
    }
}
