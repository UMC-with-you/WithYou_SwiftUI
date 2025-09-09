//
//  NoticeUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class NoticeUseCase: NoticeUseCaseProtocol {
    
    let service: NoticeServiceProtocol
    
    init(service: NoticeServiceProtocol = NoticeService()) {
        self.service = service
    }
    
    func postCreateNotice(noticeRequest: CreateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<CreateNoticeResponseDTO?>, MoyaError> {
        service.postCreateNotice(noticeRequest: noticeRequest)
    }
    
    func patchNotice(noticeRequest: UpdateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<UpdateNoticeResponseDTO?>, MoyaError> {
        service.patchNotice(noticeRequest: noticeRequest)
    }
    
    func getNoticesByTravelLog(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError> {
        service.getNoticesByTravelLog(travelId: travelId, listRequest: listRequest)
    }
    
    func getNoticesByDate(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError> {
        service.getNoticesByDate(travelId: travelId, listRequest: listRequest)
    }
    
    func deleteNotice(noticeId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError> {
        service.deleteNotice(noticeId: noticeId)
    }
    
    func patchNoticeCheck(checkRequest: NoticeCheckRequestDTO) -> AnyPublisher<ResponseDTO<NoticeCheckResponseDTO?>, MoyaError> {
        service.patchNoticeCheck(checkRequest: checkRequest)
    }
}
