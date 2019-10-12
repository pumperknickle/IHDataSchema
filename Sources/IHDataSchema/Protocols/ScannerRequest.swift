import Foundation
import Vapor

public protocol ScannerRequest: Content {
    var device: String! { get }
    var service: String! { get }
    var version: String! { get }
    var allRequests: [String]! { get }
    
    init(device: String, service: String, version: String, allRequests: [String])
}
