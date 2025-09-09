//
//  PackingItemUseCase.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Combine
import Moya

class PackingItemUseCase: PackingItemUseCaseProtocol {
    
    let service: PackingItemServiceProtocol
    
    init(service: PackingItemServiceProtocol = PackingItemService()) {
        self.service = service
    }
    
    func getPackingAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PackingAllListResponse]?>, MoyaError> {
        service.getPackingAllList(travelId: travelId)
    }
    
    func postPackingAdd(travelId: Int, packingRequest: PackingAddRequest) -> AnyPublisher<ResponseDTO<PackingAddResponse?>, MoyaError> {
        service.postPackingAdd(travelId: travelId, packingRequest: packingRequest)
    }
    
    func deletePackingItem(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingDeleteResponse?>, MoyaError> {
        service.deletePackingItem(packingItemId: packingItemId)
    }
    
    func patchPackingCheck(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingCheckResponse?>, MoyaError> {
        service.patchPackingCheck(packingItemId: packingItemId)
    }
    
    func patchPackingAdmin(packingItemId: Int, adminRequest: PackingAdminRequest) -> AnyPublisher<ResponseDTO<PackingAdminResponse?>, MoyaError> {
        service.patchPackingAdmin(packingItemId: packingItemId, adminRequest: adminRequest)
    }
}

