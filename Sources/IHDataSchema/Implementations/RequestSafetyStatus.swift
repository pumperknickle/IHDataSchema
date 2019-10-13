import Foundation

public enum RequestSafetyStatus: Int, Codable {
    case NEW = 0, SAFE, MALICIOUS, UNKNOWN
}
