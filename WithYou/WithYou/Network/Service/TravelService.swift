//
//  TravelService.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Moya
import Combine

class TravelService: TravelServiceProtocol, BaseAPIService {
    typealias Target = TravelRouter
    
    var provider: MoyaProvider<Target>
    var decoder: JSONDecoder
    var callback: DispatchQueue
    
    init(
        provider: MoyaProvider<Target> = APIManager.shared.createTestProvider(for: Target.self),
        decoder: JSONDecoder = APIManager.shared.decoder,
        callbackQueue: DispatchQueue = .main
    ) {
        self.provider = provider
        self.decoder = decoder
        self.callback = callbackQueue
    }
    
    func getTravelAllList(listRequest: TravelAllListRequest) -> AnyPublisher<ResponseDTO<[TravelAllListResponse]?>, Moya.MoyaError> {
        request(.getTravelAllList(listRequest: listRequest))
    }
    
    func postTravelCreate(podRequest: TravelCreateRequest) -> AnyPublisher<ResponseDTO<TravelCreateResponse?>, Moya.MoyaError> {
        request(.postTravelCreate(podRequest: podRequest))
    }
    
    func deleteTravelPod(travelId: Int) -> AnyPublisher<ResponseDTO<TravelDeleteResponse?>, Moya.MoyaError> {
        request(.deleteTravelPod(travelId: travelId))
    }
    
    func patchTravelPod(travelId: Int, podRequest: TravelPatchRequest) -> AnyPublisher<ResponseDTO<EmptyResponse>, Moya.MoyaError> {
        request(.patchTravelPod(travelId: travelId, podRequest: podRequest))
    }
    
    func patchTravelOutMember(travelId: Int, memberId: Int) -> AnyPublisher<ResponseDTO<TravelOutResponse?>, Moya.MoyaError> {
        request(.patchTravelOutMember(travelId: travelId, memberId: memberId))
    }
    
    func patchCombination(combination: TravelCombinationRequest) -> AnyPublisher<ResponseDTO<TravelCombinationResponse?>, Moya.MoyaError> {
        request(.patchCombination(combination: combination))
    }
    
    func getTravelAllMember(travelId: Int) -> AnyPublisher<ResponseDTO<TravelAllMemberResponse?>, Moya.MoyaError> {
        request(.getTravelAllMember(travelId: travelId))
    }
    
    func getTravelInviteCode(travelId: Int) -> AnyPublisher<ResponseDTO<TravelInviteCodeResponse?>, Moya.MoyaError> {
        request(.getTravelInviteCode(travelId: travelId))
    }
}
