//
//  APITargetType.swift
//  WithYou
//
//  Created by 배수호 on 8/15/25.
//

import Foundation
import Moya

protocol APITargetType: TargetType {}

extension APITargetType {
    var baseURL: URL {
        guard let url = URL(string: Config.baseURL) else {
            fatalError("Invalid Base URL")
        }
        return url
    }
    
    var validationType: ValidationType { .successCodes }
}
