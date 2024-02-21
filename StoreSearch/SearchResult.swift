//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Austin Sparks on 2/20/24.
//

import Foundation

class ResultArray: Codable {
    var resultCount = 0
    var results = [SearchResult]()
}

class SearchResult: Codable, CustomStringConvertible {
    var artistName: String? = ""
    var trackName: String? = ""
    var kind: String? = ""
    
    var name: String {
        return trackName ?? ""
    }
    
    var description: String {
        return "\nResult - Kind: \(kind ?? "None"), Name: \(name), Artist Name: \(artistName ?? "None")"
    }
}
