// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let feelsLike = try FeelsLike(json)

import Foundation

// MARK: - FeelsLike
public struct FeelsLike: Codable {
    public let day: Double?
    public let night: Double?
    public let eve: Double?
    public let morn: Double?

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }

    public init(day: Double?, night: Double?, eve: Double?, morn: Double?) {
        self.day = day
        self.night = night
        self.eve = eve
        self.morn = morn
    }
}

// MARK: FeelsLike convenience initializers and mutators

public extension FeelsLike {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(FeelsLike.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        day: Double?? = nil,
        night: Double?? = nil,
        eve: Double?? = nil,
        morn: Double?? = nil
    ) -> FeelsLike {
        return FeelsLike(
            day: day ?? self.day,
            night: night ?? self.night,
            eve: eve ?? self.eve,
            morn: morn ?? self.morn
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
