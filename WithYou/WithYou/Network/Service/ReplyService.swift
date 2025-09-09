//
//  ReplyService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class ReplyService: ReplyServiceProtocol, BaseAPIService {
    typealias Target = ReplyRouter
    
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
    
    func postCreateReply(commentId: Int, replyRequest: CreateReplyRequestDTO) -> AnyPublisher<ResponseDTO<CreateReplyResponseDTO?>, MoyaError> {
        request(.postCreateReply(commentId: commentId, replyRequest: replyRequest))
    }
    
    func deleteReply(replyId: Int) -> AnyPublisher<ResponseDTO<DeleteReplyResponse?>, MoyaError> {
        request(.deleteReply(replyId: replyId))
    }
    
    func patchReply(replyId: Int, replyRequest: UpdateReplyRequestDTO) -> AnyPublisher<ResponseDTO<UpdateReplyResponseDTO?>, MoyaError> {
        request(.patchReply(replyId: replyId, replyRequest: replyRequest))
    }
}
