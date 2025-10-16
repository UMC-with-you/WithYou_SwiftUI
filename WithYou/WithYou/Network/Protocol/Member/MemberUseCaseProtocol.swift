//
//  MemberUseCaseProtocol.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation
import Combine
import Moya

protocol MemberUseCaseProtocol {
    func executeRegisterMember(registerRequest: RegisterMemberRequest) -> AnyPublisher<ResponseData<RegisterMemberResponse?>, Moya.MoyaError>
    func executeUpdateMemberName(updateNameRequest: UpdateNameRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError>
    func executeGetMemberInfo() -> AnyPublisher<ResponseData<MemberInfoResponse?>, Moya.MoyaError>
    func executeDeleteMember(deleteRequest: DeleteMemberRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError>
    func executeGetPresignedUrl() -> AnyPublisher<ResponseData<PresignedUrlResponse?>, Moya.MoyaError>
}
