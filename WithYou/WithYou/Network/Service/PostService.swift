//
//  PostService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class PostService: PostServiceProtocol, BaseAPIService {
    typealias Target = PostRouter
    
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
    
    func getPostAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PostAllListResponse]?>, MoyaError> {
        request(.getPostAllList(travelId: travelId))
    }
    
    func postWrite(travelId: Int, postRequest: PostWriteRequest) -> AnyPublisher<ResponseDTO<PostWriteResponse?>, MoyaError> {
        request(.postWrite(travelId: travelId, postRequest: postRequest))
    }
    
    func getPost(postId: Int, postSingleRequest: PostSingleRequest) -> AnyPublisher<ResponseDTO<PostSingleResponse?>, MoyaError> {
        request(.getPost(postId: postId, postSingleRequest: postSingleRequest))
    }
    
    func postScrap(postId: Int) -> AnyPublisher<ResponseDTO<PostScrapResponse?>, MoyaError> {
        request(.postScrap(postId: postId))
    }
    
    func deletePost(postId: Int) -> AnyPublisher<ResponseDTO<PostDeleteResponse?>, MoyaError> {
        request(.deletePost(postId: postId))
    }
    
    func patchPost(postId: Int, postRequest: PostModifyRequest) -> AnyPublisher<ResponseDTO<PostModifyResponse?>, MoyaError> {
        request(.patchPost(postId: postId, postRequest: postRequest))
    }
    
    func getScrapedPosts() -> AnyPublisher<ResponseDTO<[Post]?>, MoyaError> {
        request(.getScrapedPosts)
    }
}
