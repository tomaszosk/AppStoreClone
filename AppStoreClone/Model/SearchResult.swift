//
//  SearchResult.swift
//  AppStoreClone
//
//  Created by Tomasz Oskroba on 5/17/21.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}
