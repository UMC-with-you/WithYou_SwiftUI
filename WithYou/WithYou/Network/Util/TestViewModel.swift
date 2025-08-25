//
//  TestViewModel.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation
import Combine

@Observable
class TestViewModel {
    let travel = TravelUseCase()
    
    var isLoading: Bool = false
    var data: [TravelAllListResponse] = .init()
    var cancellables = Set<AnyCancellable>()
    
    func travelAllList() {
        travel.getTravelAllList()
            .validationResult()
            .sink(receiveCompletion: { [weak self] completion in
                guard let self = self else { return }
                defer { self.isLoading = false }
                
                switch completion {
                case .finished:
                    print("finish")
                case .failure(let failure):
                    print("error: \(failure)")
                }
            }, receiveValue: { [weak self] response in
                guard let self = self else { return }
                self.data = response
                
                #if DEBUG
                print(response)
                #endif
            })
            .store(in: &cancellables)
    }
}

