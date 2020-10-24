// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let minutely = try Minutely(json)

import Foundation

// MARK: - Minutely
public struct Minutely: Codable {
    public let dt: Int?
    public let precipitation: Int?

    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case precipitation = "precipitation"
    }

    public init(dt: Int?, precipitation: Int?) {
        self.dt = dt
        self.precipitation = precipitation
    }
}

// MARK: Minutely convenience initializers and mutators

public extension Minutely {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Minutely.self, from: data)
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
        dt: Int?? = nil,
        precipitation: Int?? = nil
    ) -> Minutely {
        return Minutely(
            dt: dt ?? self.dt,
            precipitation: precipitation ?? self.precipitation
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
