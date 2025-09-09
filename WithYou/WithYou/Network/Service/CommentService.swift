//
//  CommentService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class CommentService: CommentServiceProtocol, BaseAPIService {
    typealias Target = CommentRouter
    
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
    
    func postCreateComment(postId: Int, commentRequest: CreateCommentRequestDTO) -> AnyPublisher<ResponseDTO<CreateCommentResponseDTO?>, MoyaError> {
        request(.postCreateComment(postId: postId, commentRequest: commentRequest))
    }
    
    func deleteComment(commentId: Int) -> AnyPublisher<ResponseDTO<DeleteCommentResponseDTO?>, MoyaError> {
        request(.deleteComment(commentId: commentId))
    }
    
    func patchComment(commentId: Int, commentRequest: UpdateCommentRequestDTO) -> AnyPublisher<ResponseDTO<UpdateCommentResponseDTO?>, MoyaError> {
        request(.patchComment(commentId: commentId, commentRequest: commentRequest))
    }
}
