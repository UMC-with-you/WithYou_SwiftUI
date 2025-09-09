//
//  PackingItemService.swift
//  WithYou
//
//  Created by 배수호 on 8/25/25.
//

import Foundation
import Moya
import Combine

class PackingItemService: PackingItemServiceProtocol, BaseAPIService {
    typealias Target = PackingItemRouter
    
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
    
    func getPackingAllList(travelId: Int) -> AnyPublisher<ResponseDTO<[PackingAllListResponse]?>, MoyaError> {
        request(.getPackingAllList(travelId: travelId))
    }
    
    func postPackingAdd(travelId: Int, packingRequest: PackingAddRequest) -> AnyPublisher<ResponseDTO<PackingAddResponse?>, MoyaError> {
        request(.postPackingAdd(travelId: travelId, packingRequest: packingRequest))
    }
    
    func deletePackingItem(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingDeleteResponse?>, MoyaError> {
        request(.deletePackingItem(packingItemId: packingItemId))
    }
    
    func patchPackingCheck(packingItemId: Int) -> AnyPublisher<ResponseDTO<PackingCheckResponse?>, MoyaError> {
        request(.patchPackingCheck(packingItemId: packingItemId))
    }
    
    func patchPackingAdmin(packingItemId: Int, adminRequest: PackingAdminRequest) -> AnyPublisher<ResponseDTO<PackingAdminResponse?>, MoyaError> {
        request(.patchPackingAdmin(packingItemId: packingItemId, adminRequest: adminRequest))
    }
}

