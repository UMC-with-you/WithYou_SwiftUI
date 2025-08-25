//
//  InvitationCode.swift
//  WithYou
//
//  Created by 배수호 on 8/14/25.
//

import Foundation

/// 여행 팟 초대 코드 조회 DTO
struct InvitationCode: Codable {
    var travelId: Int
    var invitationCode: String
}

// MARK: - 사용 예시
/*
 // GET /api/v1/travels/{travelId}/invitation_code
 let exampleResponse = ResponseData<InvitationCode>(
     isSuccess: true,
     code: "200",
     message: "OK",
     result: InvitationCode(
         travelId: 1,
         invitationCode: "ABC123"
     )
 )
*/
