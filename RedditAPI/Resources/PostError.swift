//
//  PostError.swift
//  RedditAPI
//
//  Created by Sebastian Banks on 4/7/22.
//

import Foundation

enum PostError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Server failed to reach the necessary url"
        case .thrownError(let error):
            return "Error: \(error.localizedDescription), \(error)"
        case .noData:
            return "There server responded with no data"
        case .unableToDecode:
            return "Failed to decode the data"
        }
    }
}
