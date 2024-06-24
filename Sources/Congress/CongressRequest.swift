import Foundation

public struct CongressRequest { 

    // MARK: Instance Stored Properties
    
    // URL String
    public let url: String

    // Universal Request Properties
    let requestType: RequestType
    var urlComponents: URLComponents
    var path: String
    var queryItems: [URLQueryItem]?
    
    // Bill Request Properties
    var congress: String?
    var billType: String?
    var billNumber: String?

    // MARK: Static Stored Properties

    // Constants for urlComponents
    static let scheme: String = "https"
    static let host: String = "api.congress.gov"
    static let basePath: String = "/v3/"
    static let formatQueryItem: URLQueryItem = URLQueryItem(name: "format", value: "json")

    // MARK: Nested Types

    // RequestType
    public enum RequestType: String {
        case bill = "bill/"
    }

    // MARK: init methods

    // RequestType-only init
    public init(requestType: RequestType) {
        self.requestType = requestType
        self.path = CongressRequest.basePath + requestType.rawValue

        self.urlComponents = URLComponents()
        self.urlComponents.scheme = CongressRequest.scheme
        self.urlComponents.host = CongressRequest.host
        self.urlComponents.path = self.path
        self.urlComponents.queryItems = [CongressRequest.formatQueryItem]

        // Set the URL string
        guard let urlString = urlComponents.string else {
            fatalError("Invalid URL")
        }
        self.url = urlString
    }
}