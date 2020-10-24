// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let current = try Current(json)

import Foundation

// MARK: - Current
public struct Current: Codable {
    public let dt: Int?
    public let sunrise: Int?
    public let sunset: Int?
    public let temp: Double?
    public let feelsLike: Double?
    public let pressure: Int?
    public let humidity: Int?
    public let dewPoint: Double?
    public let uvi: Double?
    public let clouds: Int?
    public let visibility: Int?
    public let windSpeed: Double?
    public let windDeg: Int?
    public let weather: [Weather]?
    public let pop: Double?

    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case sunrise = "sunrise"
        case sunset = "sunset"
        case temp = "temp"
        case feelsLike = "feels_like"
        case pressure = "pressure"
        case humidity = "humidity"
        case dewPoint = "dew_point"
        case uvi = "uvi"
        case clouds = "clouds"
        case visibility = "visibility"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather = "weather"
        case pop = "pop"
    }

    public init(dt: Int?, sunrise: Int?, sunset: Int?, temp: Double?, feelsLike: Double?, pressure: Int?, humidity: Int?, dewPoint: Double?, uvi: Double?, clouds: Int?, visibility: Int?, windSpeed: Double?, windDeg: Int?, weather: [Weather]?, pop: Double?) {
        self.dt = dt
        self.sunrise = sunrise
        self.sunset = sunset
        self.temp = temp
        self.feelsLike = feelsLike
        self.pressure = pressure
        self.humidity = humidity
        self.dewPoint = dewPoint
        self.uvi = uvi
        self.clouds = clouds
        self.visibility = visibility
        self.windSpeed = windSpeed
        self.windDeg = windDeg
        self.weather = weather
        self.pop = pop
    }
}

// MARK: Current convenience initializers and mutators

public extension Current {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Current.self, from: data)
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
        sunrise: Int?? = nil,
        sunset: Int?? = nil,
        temp: Double?? = nil,
        feelsLike: Double?? = nil,
        pressure: Int?? = nil,
        humidity: Int?? = nil,
        dewPoint: Double?? = nil,
        uvi: Double?? = nil,
        clouds: Int?? = nil,
        visibility: Int?? = nil,
        windSpeed: Double?? = nil,
        windDeg: Int?? = nil,
        weather: [Weather]?? = nil,
        pop: Double?? = nil
    ) -> Current {
        return Current(
            dt: dt ?? self.dt,
            sunrise: sunrise ?? self.sunrise,
            sunset: sunset ?? self.sunset,
            temp: temp ?? self.temp,
            feelsLike: feelsLike ?? self.feelsLike,
            pressure: pressure ?? self.pressure,
            humidity: humidity ?? self.humidity,
            dewPoint: dewPoint ?? self.dewPoint,
            uvi: uvi ?? self.uvi,
            clouds: clouds ?? self.clouds,
            visibility: visibility ?? self.visibility,
            windSpeed: windSpeed ?? self.windSpeed,
            windDeg: windDeg ?? self.windDeg,
            weather: weather ?? self.weather,
            pop: pop ?? self.pop
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
