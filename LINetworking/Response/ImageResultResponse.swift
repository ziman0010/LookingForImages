//
//  ImageResultResponse.swift
//  LINetworking
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation

public struct ImageResultResponse: Codable {
    
    public let position: Int
    public let thumbnail: String
    public let original: String?
    public let originalWidth: Int?
    public let originalHeight: Int?
    public let title: String
    public let link: String
    public let source: String
    public let isProduct: Bool?
    public let inStock: Bool?
    
    private enum CodingKeys: String, CodingKey {
        case position, thumbnail, original, title, link, source
        case originalWidth = "original_width"
        case originalHeight = "original_height"
        case isProduct = "is_product"
        case inStock = "in_stock"
    }
}
