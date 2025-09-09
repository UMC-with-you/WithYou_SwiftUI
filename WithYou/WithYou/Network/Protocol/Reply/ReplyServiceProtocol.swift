//
//  ReplyServiceProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol ReplyServiceProtocol {
    func postCreateReply(commentId: Int, replyRequest: CreateReplyRequestDTO) -> AnyPublisher<ResponseDTO<CreateReplyResponseDTO?>, MoyaError>
    func deleteReply(replyId: Int) -> AnyPublisher<ResponseDTO<DeleteReplyResponse?>, MoyaError>
    func patchReply(replyId: Int, replyRequest: UpdateReplyRequestDTO) -> AnyPublisher<ResponseDTO<UpdateReplyResponseDTO?>, MoyaError>
}
