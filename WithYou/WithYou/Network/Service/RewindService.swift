//
//  RewindService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class RewindService: RewindServiceProtocol, BaseAPIService {
    typealias Target = RewindRouter
    
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
    
    func getRewindAllList(travelId: Int, day: RewindListRequest) -> AnyPublisher<ResponseDTO<[Rewind]?>, MoyaError> {
        request(.getRewindAllList(travelId: travelId, day: day))
    }
    
    func postRewind(travelId: Int, rewindRequest: RewindWriteRequest) -> AnyPublisher<ResponseDTO<RewindWriteResponse?>, MoyaError> {
        request(.postRewind(travelId: travelId, rewindRequest: rewindRequest))
    }
    
    func getRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<Rewind?>, MoyaError> {
        request(.getRewind(travelId: travelId, rewindId: rewindId))
    }
    
    func deleteRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError> {
        request(.deleteRewind(travelId: travelId, rewindId: rewindId))
    }
    
    func patchRewind(travelId: Int, rewindId: Int, rewindRequest: RewindModifyRequest) -> AnyPublisher<ResponseDTO<RewindModifyResponse?>, MoyaError> {
        request(.patchRewind(travelId: travelId, rewindId: rewindId, rewindRequest: rewindRequest))
    }
    
    func getRewindQuestionList() -> AnyPublisher<ResponseDTO<[RewindQuestListResponse]?>, MoyaError> {
        request(.getRewindQeustionList)
    }
}
