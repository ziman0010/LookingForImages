//
//  RequestFactory.swift
//  LINetworking
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation

final class RequestFactory {
    
    private var defaultParams = ["tbm": "isch","ijn" : "0","api_key" : "aa882fee20fd2f0921a0dba418e72ba2f672d4887450f3c614b0397568a5fca1"]
    
    func createSearchGetRequest(query: String) -> Request {
        
        var params = defaultParams
        params["q"] = query
        
        let request = Request(method: .get, host: "https://serpapi.com", path: "/search.json", headers: [:], params: params)
        
        return request
    }
    
}
