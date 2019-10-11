import FluentPostgreSQL
import Foundation
import Vapor

public protocol RecordedResponse: Model, Content, Parameter, Migration {
    var id: Int? { get }
    var device: String! { get }
    var service: String! { get }
    var version: String! { get }
    var initialRequests: [String]! { get }
    var lastRequest: String! { get }
    var lastResponse: String! { get }
    
    init(id: Int?, device: String, service: String, version: String, initialRequests: [String], lastRequest: String, lastResponse: String)
}
