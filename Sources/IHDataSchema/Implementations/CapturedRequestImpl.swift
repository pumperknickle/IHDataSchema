import FluentPostgreSQL
import Foundation
import Vapor

public final class CapturedRequestImpl: Codable {
    private var rawID: ID?
    private var rawCreatedAt: Date?
    private let rawDevice: String!
    private let rawService: String!
    private let rawVersion: String!
    private let rawSessionID: String!
    private let rawLastRequest: String!
    private let rawSentResponse: String!
    private let rawSafetyStatus: RequestSafetyStatus!
    
    public init(id: Int? = nil, createdAt: Date? = nil, device: String, service: String, version: String, sessionID: String, lastRequest: String, sentResponse: String, safetyStatus: RequestSafetyStatus) {
        self.rawID = id
        self.rawCreatedAt = createdAt
        self.rawDevice = device
        self.rawService = service
        self.rawVersion = version
        self.rawSessionID = sessionID
        self.rawLastRequest = lastRequest
        self.rawSentResponse = sentResponse
        self.rawSafetyStatus = safetyStatus
    }
}

extension CapturedRequestImpl: Model {
    public typealias Database = PostgreSQLDatabase
    public typealias ID = Int
    public static let idKey: IDKey = \.rawID
    public static let createdAtKey: TimestampKey? = \.rawCreatedAt
}

extension CapturedRequestImpl: Content { }

extension CapturedRequestImpl: Parameter { }

extension CapturedRequestImpl: Migration { }

extension CapturedRequestImpl: CapturedRequest {
    public var id: Int? { return rawID }
    public var createdAt: Date? { return rawCreatedAt }
    public var device: String! { return rawDevice }
    public var service: String! { return rawService }
    public var version: String! { return rawVersion }
    public var sessionID: String! { return rawSessionID }
    public var lastRequest: String! { return rawLastRequest }
    public var sentResponse: String! { return rawSentResponse }
    public var safetyStatus: RequestSafetyStatus! { return rawSafetyStatus }
}
