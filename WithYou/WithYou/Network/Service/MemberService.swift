//
//  MemberService.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation
import Moya
import Combine

class MemberService: MemberServiceProtocol, BaseAPIService {
    typealias Target = MemberRouter
    
    var provider: MoyaProvider<Target>
    var decoder: JSONDecoder
    var callbackQueue: DispatchQueue
    
    init(
        provider: MoyaProvider<Target> = APIManager.shared.createTestProvider(for: Target.self),
        decoder: JSONDecoder = APIManager.shared.decoder,
        callbackQueue: DispatchQueue = .main
    ) {
        self.provider = provider
        self.decoder = decoder
        self.callbackQueue = callbackQueue
    }
    
    func registerMember(registerRequest: RegisterMemberRequest) -> AnyPublisher<ResponseData<RegisterMemberResponse?>, Moya.MoyaError> {
        request(.postMemberRegister(registerRequest: registerRequest))
    }
    
    func updateMemberName(updateNameRequest: UpdateNameRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError> {
        request(.patchMemberName(updateNameRequest: updateNameRequest))
    }
    
    func getMemberInfo() -> AnyPublisher<ResponseData<MemberInfoResponse?>, Moya.MoyaError> {
        request(.getMemberInfo)
    }
    
    func deleteMember(deleteRequest: DeleteMemberRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError> {
        request(.deleteMember(deleteRequest: deleteRequest))
    }
    
    func getPresignedUrl() -> AnyPublisher<ResponseData<PresignedUrlResponse?>, Moya.MoyaError> {
        request(.getMemberImage)
    }
}
