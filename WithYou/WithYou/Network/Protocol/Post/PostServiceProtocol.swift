//
//  PostServiceProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol PostServiceProtocol {
    func getPostAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PostAllListResponse]?>, MoyaError>
    func postWrite(travelId: Int, postRequest: PostWriteRequest) -> AnyPublisher<ResponseDTO<PostWriteResponse?>, MoyaError>
    func getPost(postId: Int, postSingleRequest: PostSingleRequest) -> AnyPublisher<ResponseDTO<PostSingleResponse?>, MoyaError>
    func postScrap(postId: Int) -> AnyPublisher<ResponseDTO<PostScrapResponse?>, MoyaError>
    func deletePost(postId: Int) -> AnyPublisher<ResponseDTO<PostDeleteResponse?>, MoyaError>
    func patchPost(postId: Int, postRequest: PostModifyRequest) -> AnyPublisher<ResponseDTO<PostModifyResponse?>, MoyaError>
    func getScrapedPosts() -> AnyPublisher<ResponseDTO<[Post]?>, MoyaError>
}
