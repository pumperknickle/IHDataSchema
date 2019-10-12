import FluentPostgreSQL
import Foundation
import Vapor

public final class RecordedResponseImpl: Codable {
    private var rawID: ID? // cryptograpic hash of content (address)
    private let rawDevice: String!
    private let rawService: String!
    private let rawVersion: String!
    private let rawInitialRequests: [String]!
    private let rawLastRequest: String!
    private let rawLastResponse: String!
    
    public init(id: ID? = nil, device: String, service: String, version: String, initialRequests: [String], lastRequest: String, lastResponse: String) {
        self.rawID = id
        self.rawDevice = device
        self.rawService = service
        self.rawVersion = version
        self.rawInitialRequests = initialRequests
        self.rawLastRequest = lastRequest
        self.rawLastResponse = lastResponse
    }
}

extension RecordedResponseImpl: Model {
    public typealias Database = PostgreSQLDatabase
    public typealias ID = String
    public static let idKey: IDKey = \.rawID
}

extension RecordedResponseImpl: Content { }

extension RecordedResponseImpl: Parameter { }

extension RecordedResponseImpl: Migration { }

extension RecordedResponseImpl: RecordedResponse {
    public var id: ID? { return rawID }
    public var device: String! { return rawDevice }
    public var service: String! { return rawService }
    public var version: String! { return rawVersion }
    public var initialRequests: [String]! { return rawInitialRequests }
    public var lastRequest: String! { return rawLastRequest }
    public var lastResponse: String! { return rawLastResponse }
}
