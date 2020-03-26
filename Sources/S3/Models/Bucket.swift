//
//  Bucket.swift
//  S3
//
//  Created by Ondrej Rafaj on 11/05/2018.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Vapor


/// Bucket model
public struct Bucket: Content {
    
    /// Creating new bucket
    public struct New: Codable {
        
        /// Name of the new bucket
        public let name: String
        
        /// New bucket initializer
        public init(name: String) {
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
        
    }
    
    /// Bucket location object
    public struct Location: Content {
        
        /// Location of the bucket
        public let region: String
        
        enum CodingKeys: String, CodingKey {
            case region = "LocationConstraint"
        }
        
    }
    
    /// Name of a bucket
    public let name: String

    /// Bucket creation date
    public let created: Date

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case created = "CreationDate"
    }
    
}
