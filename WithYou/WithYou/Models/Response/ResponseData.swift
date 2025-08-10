import Foundation

struct ResponseData<T: Codable>: Codable {
    let isSuccess: Bool
    let code: String
    let message: String
    let result: T?
}



