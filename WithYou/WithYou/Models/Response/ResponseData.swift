//
//  ResponseData.swift
//  WithYou
//
//  Created by 배수호 on 8/14/25.
//

import Foundation

struct ResponseData<T: Codable>: Codable {
    let isSuccess: Bool
    let code: String
    let message: String
    let result: T?
}
