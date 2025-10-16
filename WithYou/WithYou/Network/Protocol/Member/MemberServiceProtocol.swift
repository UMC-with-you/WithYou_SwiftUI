//
//  MemberServiceProtocol.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation
import Combine
import Moya

protocol MemberServiceProtocol {
    func registerMember(registerRequest: RegisterMemberRequest) -> AnyPublisher<ResponseData<RegisterMemberResponse?>, Moya.MoyaError>
    func updateMemberName(updateNameRequest: UpdateNameRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError>
    func getMemberInfo() -> AnyPublisher<ResponseData<MemberInfoResponse?>, Moya.MoyaError>
    func deleteMember(deleteRequest: DeleteMemberRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError>
    func getPresignedUrl() -> AnyPublisher<ResponseData<PresignedUrlResponse?>, Moya.MoyaError>
}
