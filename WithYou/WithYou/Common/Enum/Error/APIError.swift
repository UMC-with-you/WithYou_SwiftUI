//
//  APIError.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

enum APIError: LocalizedError {
    case serverError
    case emptyResult
    
    
    var errorDescription: String? {
        switch self {
        case .serverError:
            "서버 오류"
        case .emptyResult:
            "빈 값으로 넘어옴요!"
        }
    }
}
