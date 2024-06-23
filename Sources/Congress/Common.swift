// MARK: - Pagination
struct Pagination: Codable {
    let count: Int
    let next: String?
}

// MARK: - Request
struct Request: Codable {
    let billUrl: String?
    let billNumber: String?
    let billType: String?
    let congress: String?
    let contentType: String
    let format: String
}