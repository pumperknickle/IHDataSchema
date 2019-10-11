import FluentPostgreSQL
import Foundation
import Vapor

public protocol Endpoint: Model, Content, Parameter, Migration {
    var id: Int? { get }
    var device: String! { get }
    var service: String! { get }
    var version: String! { get }
    var ip: String! { get }
    var port: String! { get }
    
    init(id: Int?, device: String, service: String, version: String, ip: String, port: String)
}
