import FluentPostgreSQL
import Foundation
import Vapor

public final class EndpointImpl: Codable {
    private var rawID: ID?
    private let rawDevice: String!
    private let rawService: String!
    private let rawVersion: String!
    private let rawIP: String!
    private let rawPort: String!
    
    public init(id: Int? = nil, device: String, service: String, version: String, ip: String, port: String) {
        self.rawID = id
        self.rawDevice = device
        self.rawService = service
        self.rawVersion = version
        self.rawIP = ip
        self.rawPort = port
    }
}

extension EndpointImpl: Model {
    public typealias Database = PostgreSQLDatabase
    public typealias ID = Int
    public static let idKey: IDKey = \.rawID
}

extension EndpointImpl: Content { }

extension EndpointImpl: Parameter { }

extension EndpointImpl: Migration { }

extension EndpointImpl: Endpoint {
    public var id: Int? { return rawID }
    public var device: String! { return rawDevice }
    public var service: String! { return rawService }
    public var version: String! { return rawVersion }
    public var ip: String! { return rawIP }
    public var port: String! { return rawPort }
}
