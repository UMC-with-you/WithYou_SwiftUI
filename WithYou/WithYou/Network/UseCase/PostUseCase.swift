//
//  PostUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class PostUseCase: PostUseCaseProtocol {
    
    let service: PostServiceProtocol
    
    init(service: PostServiceProtocol = PostService()) {
        self.service = service
    }
    
    func getPostAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PostAllListResponse]?>, MoyaError> {
        service.getPostAllList(travelId: travelId)
    }
    
    func postWrite(travelId: Int, postRequest: PostWriteRequest) -> AnyPublisher<ResponseDTO<PostWriteResponse?>, MoyaError> {
        service.postWrite(travelId: travelId, postRequest: postRequest)
    }
    
    func getPost(postId: Int, postSingleRequest: PostSingleRequest) -> AnyPublisher<ResponseDTO<PostSingleResponse?>, MoyaError> {
        service.getPost(postId: postId, postSingleRequest: postSingleRequest)
    }
    
    func postScrap(postId: Int) -> AnyPublisher<ResponseDTO<PostScrapResponse?>, MoyaError> {
        service.postScrap(postId: postId)
    }
    
    func deletePost(postId: Int) -> AnyPublisher<ResponseDTO<PostDeleteResponse?>, MoyaError> {
        service.deletePost(postId: postId)
    }
    
    func patchPost(postId: Int, postRequest: PostModifyRequest) -> AnyPublisher<ResponseDTO<PostModifyResponse?>, MoyaError> {
        service.patchPost(postId: postId, postRequest: postRequest)
    }
    
    func getScrapedPosts() -> AnyPublisher<ResponseDTO<[Post]?>, MoyaError> {
        service.getScrapedPosts()
    }
}
