//
//  CommentServiceProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol CommentServiceProtocol {
    func postCreateComment(postId: Int, commentRequest: CreateCommentRequestDTO) -> AnyPublisher<ResponseDTO<CreateCommentResponseDTO?>, MoyaError>
    func deleteComment(commentId: Int) -> AnyPublisher<ResponseDTO<DeleteCommentResponseDTO?>, MoyaError>
    func patchComment(commentId: Int, commentRequest: UpdateCommentRequestDTO) -> AnyPublisher<ResponseDTO<UpdateCommentResponseDTO?>, MoyaError>
}
