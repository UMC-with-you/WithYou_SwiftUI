//
//  CommentUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class CommentUseCase: CommentUseCaseProtocol {
    
    let service: CommentServiceProtocol
    
    init(service: CommentServiceProtocol = CommentService()) {
        self.service = service
    }
    
    func postCreateComment(postId: Int, commentRequest: CreateCommentRequestDTO) -> AnyPublisher<ResponseDTO<CreateCommentResponseDTO?>, MoyaError> {
        service.postCreateComment(postId: postId, commentRequest: commentRequest)
    }
    
    func deleteComment(commentId: Int) -> AnyPublisher<ResponseDTO<DeleteCommentResponseDTO?>, MoyaError> {
        service.deleteComment(commentId: commentId)
    }
    
    func patchComment(commentId: Int, commentRequest: UpdateCommentRequestDTO) -> AnyPublisher<ResponseDTO<UpdateCommentResponseDTO?>, MoyaError> {
        service.patchComment(commentId: commentId, commentRequest: commentRequest)
    }
}
