// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let temp = try Temp(json)

import Foundation

// MARK: - Temp
public struct Temp: Codable {
    public let day: Double?
    public let min: Double?
    public let max: Double?
    public let night: Double?
    public let eve: Double?
    public let morn: Double?

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case min = "min"
        case max = "max"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }

    public init(day: Double?, min: Double?, max: Double?, night: Double?, eve: Double?, morn: Double?) {
        self.day = day
        self.min = min
        self.max = max
        self.night = night
        self.eve = eve
        self.morn = morn
    }
}

// MARK: Temp convenience initializers and mutators

public extension Temp {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Temp.self, from: data)
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
        min: Double?? = nil,
        max: Double?? = nil,
        night: Double?? = nil,
        eve: Double?? = nil,
        morn: Double?? = nil
    ) -> Temp {
        return Temp(
            day: day ?? self.day,
            min: min ?? self.min,
            max: max ?? self.max,
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
