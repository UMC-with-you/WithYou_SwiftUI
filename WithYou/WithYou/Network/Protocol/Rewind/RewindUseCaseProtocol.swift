//
//  RewindUseCaseProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol RewindUseCaseProtocol {
    func getRewindAllList(travelId: Int, day: RewindListRequest) -> AnyPublisher<ResponseDTO<[Rewind]?>, MoyaError>
    func postRewind(travelId: Int, rewindRequest: RewindWriteRequest) -> AnyPublisher<ResponseDTO<RewindWriteResponse?>, MoyaError>
    func getRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<Rewind?>, MoyaError>
    func deleteRewind(travelId: Int, rewindId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError>
    func patchRewind(travelId: Int, rewindId: Int, rewindRequest: RewindModifyRequest) -> AnyPublisher<ResponseDTO<RewindModifyResponse?>, MoyaError>
    func getRewindQuestionList() -> AnyPublisher<ResponseDTO<[RewindQuestListResponse]?>, MoyaError>
}
