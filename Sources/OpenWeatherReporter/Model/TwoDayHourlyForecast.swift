// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let twoDayHourlyForecast = try TwoDayHourlyForecast(json)

import Foundation

// MARK: - TwoDayHourlyForecast
public struct TwoDayHourlyForecast: Codable {
    public let lat: Double?
    public let lon: Double?
    public let timezone: String?
    public let timezoneOffset: Int?
    public let current: Current?
    public let minutely: [Minutely]?
    public let hourly: [Current]?
    public let daily: [Daily]?

    enum CodingKeys: String, CodingKey {
        case lat = "lat"
        case lon = "lon"
        case timezone = "timezone"
        case timezoneOffset = "timezone_offset"
        case current = "current"
        case minutely = "minutely"
        case hourly = "hourly"
        case daily = "daily"
    }

    public init(lat: Double?, lon: Double?, timezone: String?, timezoneOffset: Int?, current: Current?, minutely: [Minutely]?, hourly: [Current]?, daily: [Daily]?) {
        self.lat = lat
        self.lon = lon
        self.timezone = timezone
        self.timezoneOffset = timezoneOffset
        self.current = current
        self.minutely = minutely
        self.hourly = hourly
        self.daily = daily
    }
}

// MARK: TwoDayHourlyForecast convenience initializers and mutators

public extension TwoDayHourlyForecast {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TwoDayHourlyForecast.self, from: data)
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
        lat: Double?? = nil,
        lon: Double?? = nil,
        timezone: String?? = nil,
        timezoneOffset: Int?? = nil,
        current: Current?? = nil,
        minutely: [Minutely]?? = nil,
        hourly: [Current]?? = nil,
        daily: [Daily]?? = nil
    ) -> TwoDayHourlyForecast {
        return TwoDayHourlyForecast(
            lat: lat ?? self.lat,
            lon: lon ?? self.lon,
            timezone: timezone ?? self.timezone,
            timezoneOffset: timezoneOffset ?? self.timezoneOffset,
            current: current ?? self.current,
            minutely: minutely ?? self.minutely,
            hourly: hourly ?? self.hourly,
            daily: daily ?? self.daily
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
