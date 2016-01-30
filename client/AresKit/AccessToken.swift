//
//  AccessToken.swift
//  Ares
//
//  Created by Indragie on 1/30/16.
//  Copyright © 2016 Indragie Karunaratne. All rights reserved.
//

public struct AccessToken: CustomStringConvertible, JSONDeserializable {
    public let token: String
    
    // MARK: CustomStringConvertible
    
    public var description: String {
        return "AccessToken{token=\(token)}"
    }
    
    // MARK: JSONDeserializable
    
    public init?(JSON: JSONDictionary) {
        if let token = JSON["token"] as? String {
            self.token = token
        } else {
            self.token = ""
            return nil
        }
    }
}