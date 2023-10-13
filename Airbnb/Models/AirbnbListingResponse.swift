//
//  AirbnbListingResponse.swift
//  Airbnb
//
//  Created by Khant Zaw Win on 11/10/23.
//

import Foundation

struct AirbnbListingResponse : Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
