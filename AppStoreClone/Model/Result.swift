//
//  Result.swift
//  AppStoreClone
//
//  Created by Tomasz Oskroba on 5/17/21.
//

import Foundation

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
}
