//
//  ReplyUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class ReplyUseCase: ReplyUseCaseProtocol {
    
    let service: ReplyServiceProtocol
    
    init(service: ReplyServiceProtocol = ReplyService()) {
        self.service = service
    }
    
    func postCreateReply(commentId: Int, replyRequest: CreateReplyRequestDTO) -> AnyPublisher<ResponseDTO<CreateReplyResponseDTO?>, MoyaError> {
        service.postCreateReply(commentId: commentId, replyRequest: replyRequest)
    }
    
    func deleteReply(replyId: Int) -> AnyPublisher<ResponseDTO<DeleteReplyResponse?>, MoyaError> {
        service.deleteReply(replyId: replyId)
    }
    
    func patchReply(replyId: Int, replyRequest: UpdateReplyRequestDTO) -> AnyPublisher<ResponseDTO<UpdateReplyResponseDTO?>, MoyaError> {
        service.patchReply(replyId: replyId, replyRequest: replyRequest)
    }
}
