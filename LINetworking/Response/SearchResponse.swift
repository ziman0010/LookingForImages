//
//  SearchResponse.swift
//  LINetworking
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation

public struct SearchResponse: Codable, RequestResponse {
    
    public let imagesResults: [ImageResultResponse]?
    
    private enum CodingKeys: String, CodingKey {
        case imagesResults = "images_results"
    }
}
