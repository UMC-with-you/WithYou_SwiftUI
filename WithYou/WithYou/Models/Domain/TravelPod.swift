//
//  Travel.swift
//  WithYou
//
//  Created by 배수호 on 8/10/25.
//

import Foundation

struct TravelPod: Codable {
    var id: Int
    var title : String
    var startDate : String
    var endDate : String
    var status : String
    var imageUrl : String
    
    enum CodingKeys: String, CodingKey {
        case id = "travelId"
        case title
        case startDate
        case endDate
        case status
        case imageUrl
    }
}
