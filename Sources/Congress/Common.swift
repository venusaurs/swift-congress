// MARK: - Pagination
struct Pagination: Codable {
    let count: Int
    let next: String?
}

// MARK: - Request
struct Request: Codable {
    let contentType: String
    let format: String
}