//
//  RewindUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class RewindUseCase: RewindUseCaseProtocol {
    
    let service: RewindServiceProtocol
    
    init(service: RewindServiceProtocol = RewindService()) {
        self.service = service
    }
    
    func getRewindAllList(travelId: Int, day: RewindListRequest) -> AnyPublisher<ResponseDTO<[Rewind]?>, MoyaError> {
        service.getRewindAllList(travelId: travelId, day: day)
    }
    
    func postRewind(travelId: Int, rewindRequest: RewindWriteRequest) -> AnyPublisher<ResponseDTO<RewindWriteResponse?>, MoyaError> {
        service.postRewind(travelId: travelId, rewindRequest: rewindRequest)
    }
    
    func getRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<Rewind?>, MoyaError> {
        service.getRewind(travelId: travelId, rewindId: rewindId)
    }
    
    func deleteRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError> {
        service.deleteRewind(travelId: travelId, rewindId: rewindId)
    }
    
    func patchRewind(travelId: Int, rewindId: Int, rewindRequest: RewindModifyRequest) -> AnyPublisher<ResponseDTO<RewindModifyResponse?>, MoyaError> {
        service.patchRewind(travelId: travelId, rewindId: rewindId, rewindRequest: rewindRequest)
    }
    
    func getRewindQuestionList() -> AnyPublisher<ResponseDTO<[RewindQuestListResponse]?>, MoyaError> {
        service.getRewindQuestionList()
    }
}
