//
//  NoticeService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class NoticeService: NoticeServiceProtocol, BaseAPIService {
    typealias Target = NoticeRouter
    
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
    
    func postCreateNotice(noticeRequest: CreateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<CreateNoticeResponseDTO?>, MoyaError> {
        request(.postCreateNotice(noticeRequest: noticeRequest))
    }
    
    func patchNotice(noticeRequest: UpdateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<UpdateNoticeResponseDTO?>, MoyaError> {
        request(.patchNotice(noticeRequest: noticeRequest))
    }
    
    func getNoticesByTravelLog(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError> {
        request(.getNoticesByTravelLog(travelId: travelId, listRequest: listRequest))
    }
    
    func getNoticesByDate(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError> {
        request(.getNoticesByDate(travelId: travelId, listRequest: listRequest))
    }
    
    func deleteNotice(noticeId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError> {
        request(.deleteNotice(noticeId: noticeId))
    }
    
    func patchNoticeCheck(checkRequest: NoticeCheckRequestDTO) -> AnyPublisher<ResponseDTO<NoticeCheckResponseDTO?>, MoyaError> {
        request(.patchNoticeCheck(checkRequest: checkRequest))
    }
}
