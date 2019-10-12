import Foundation
import Vapor

public struct ScannerRequestImpl: Codable {
    private let rawDevice: String!
    private let rawService: String!
    private let rawVersion: String!
    private let rawAllRequests: [String]!
    
    public init(device: String, service: String, version: String, allRequests: [String]) {
        self.rawDevice = device
        self.rawService = service
        self.rawVersion = version
        self.rawAllRequests = allRequests
    }
}

extension ScannerRequestImpl: Content { }

extension ScannerRequestImpl: ScannerRequest {
    public var device: String! { return rawDevice }
    public var service: String! { return rawService }
    public var version: String! { return rawVersion }
    public var allRequests: [String]! { return rawAllRequests }
}
