// Bill Response for the Congress.gov API
import Foundation

// MARK: - BillResponse
public struct BillResponse: Codable {
    let bills: [Bill]
    let pagination: PaginationMeta
    let request: RequestMeta

    // MARK: - Bill
    struct Bill: Codable {
        let congress: Int
        let latestAction: LatestAction
        let number: String
        let originChamber: String
        let originChamberCode: String
        let title: String
        let type: String
        let updateDate: String
        let updateDateIncludingText: String
        let url: String
    }

    // MARK: - LatestAction
    struct LatestAction: Codable {
        let actionDate: String
        let text: String
    }
}





