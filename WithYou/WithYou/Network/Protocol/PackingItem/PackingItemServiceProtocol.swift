//
//  PackingItemServiceProtocol.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

protocol PackingItemServiceProtocol {
    func getPackingAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PackingAllListResponse]?>, MoyaError>
    func postPackingAdd(travelId: Int, packingRequest: PackingAddRequest) -> AnyPublisher<ResponseDTO<PackingAddResponse?>, MoyaError>
    func deletePackingItem(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingDeleteResponse?>, MoyaError>
    func patchPackingCheck(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingCheckResponse?>, MoyaError>
    func patchPackingAdmin(packingItemId: Int, adminRequest: PackingAdminRequest) -> AnyPublisher<ResponseDTO<PackingAdminResponse?>, MoyaError>
}

