//
//  Request.swift
//  LINetworking
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Alamofire

public struct Request {
    let method: HTTPMethod
    let host: String
    let path: String
    let headers: [String: String]
    let params: [String: Any]
    
    var requestURL: String {
        host + path
    }
}
