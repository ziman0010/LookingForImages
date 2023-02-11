//
//  LIError.swift
//  LINetworking
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation

enum LIError: String, Error {
    case cannotConvertedIntoModel = "Response cannot be converted into model type"
    case cannotLoadImage = "Image cannot be loaded"
    
}
