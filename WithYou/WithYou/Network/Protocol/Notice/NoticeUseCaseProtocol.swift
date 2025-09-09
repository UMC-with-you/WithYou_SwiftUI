//
//  NoticeUseCaseProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol NoticeUseCaseProtocol {
    func postCreateNotice(noticeRequest: CreateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<CreateNoticeResponseDTO?>, MoyaError>
    func patchNotice(noticeRequest: UpdateNoticeRequestDTO) -> AnyPublisher<ResponseDTO<UpdateNoticeResponseDTO?>, MoyaError>
    func getNoticesByTravelLog(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError>
    func getNoticesByDate(travelId: Int, listRequest: NoticeAllListRequestDTO) -> AnyPublisher<ResponseDTO<[NoticeAllListResponseDTO]>, MoyaError>
    func deleteNotice(noticeId: Int) -> AnyPublisher<ResponseDTO<EmptyResponse>, MoyaError>
    func patchNoticeCheck(checkRequest: NoticeCheckRequestDTO) -> AnyPublisher<ResponseDTO<NoticeCheckResponseDTO?>, MoyaError>
}
