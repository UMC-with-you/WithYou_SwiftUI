//
//  MemberUseCase.swift
//  WithYou
//
//  Created by suho on 9/16/25.
//

import Foundation
import Combine

class MemberUseCase: MemberUseCaseProtocol {
    
    private let service: MemberServiceProtocol
    
    init(service: MemberServiceProtocol = MemberService()) {
        self.service = service
    }
    
    /// 회원 가입
    func executeRegisterMember(registerRequest: RegisterMemberRequest) -> AnyPublisher<ResponseData<RegisterMemberResponse?>, Moya.MoyaError> {
        return service.registerMember(registerRequest: registerRequest)
    }
    
    /// 회원 이름 변경
    func executeUpdateMemberName(updateNameRequest: UpdateNameRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError> {
        return service.updateMemberName(updateNameRequest: updateNameRequest)
    }
    
    /// 회원 정보 조회
    func executeGetMemberInfo() -> AnyPublisher<ResponseData<MemberInfoResponse?>, Moya.MoyaError> {
        return service.getMemberInfo()
    }
    
    /// 회원 탈퇴
    func executeDeleteMember(deleteRequest: DeleteMemberRequest) -> AnyPublisher<ResponseData<EmptyResponse?>, Moya.MoyaError> {
        return service.deleteMember(deleteRequest: deleteRequest)
    }
    
    /// 이미지 업데이트 프리사인드 URL 발급
    func executeGetPresignedUrl() -> AnyPublisher<ResponseData<PresignedUrlResponse?>, Moya.MoyaError> {
        return service.getPresignedUrl()
    }
}
