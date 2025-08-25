//
//  CommonDTO.swift
//  WithYou
//
//  Created by Apple Coding machine on 8/25/25.
//

import Foundation

struct ResponseDTO<T: Codable>: Codable {
    let isSuccess: Bool
    let code: String
    let message: String
    let result: T
}
