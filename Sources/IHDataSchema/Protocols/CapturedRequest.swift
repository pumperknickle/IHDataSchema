import FluentPostgreSQL
import Foundation
import Vapor

public protocol CapturedRequest: Model, Content, Parameter, Migration {
    var id: Int? { get }
    var createdAt: Date? { get }
    var device: String! { get }
    var service: String! { get }
    var version: String! { get }
    var sessionID: String! { get }
    var lastRequest: String! { get }
    var sentResponse: String! { get }
    var safeToScan: Bool! { get }
    
    init(id: Int?, createdAt: Date?, device: String, service: String, version: String, sessionID: String, lastRequest: String, sentResponse: String, safeToScan:Bool)
}
