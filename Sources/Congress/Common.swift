// MARK: - Pagination
public struct PaginationMeta: Codable {
    let count: Int
    let next: String?
}

// MARK: - Request
public struct RequestMeta: Codable {
    let billUrl: String?
    let billNumber: String?
    let billType: String?
    let congress: String?
    let contentType: String
    let format: String
}