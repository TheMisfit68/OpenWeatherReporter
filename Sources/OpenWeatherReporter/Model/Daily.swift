// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let daily = try Daily(json)

import Foundation

// MARK: - Daily
public struct Daily: Codable {
    public let dt: Int?
    public let sunrise: Int?
    public let sunset: Int?
    public let temp: Temp?
    public let feelsLike: FeelsLike?
    public let pressure: Int?
    public let humidity: Int?
    public let dewPoint: Double?
    public let windSpeed: Double?
    public let windDeg: Int?
    public let weather: [Weather]?
    public let clouds: Int?
    public let pop: Double?
    public let rain: Double?
    public let uvi: Double?

    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case sunrise = "sunrise"
        case sunset = "sunset"
        case temp = "temp"
        case feelsLike = "feels_like"
        case pressure = "pressure"
        case humidity = "humidity"
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather = "weather"
        case clouds = "clouds"
        case pop = "pop"
        case rain = "rain"
        case uvi = "uvi"
    }

    public init(dt: Int?, sunrise: Int?, sunset: Int?, temp: Temp?, feelsLike: FeelsLike?, pressure: Int?, humidity: Int?, dewPoint: Double?, windSpeed: Double?, windDeg: Int?, weather: [Weather]?, clouds: Int?, pop: Double?, rain: Double?, uvi: Double?) {
        self.dt = dt
        self.sunrise = sunrise
        self.sunset = sunset
        self.temp = temp
        self.feelsLike = feelsLike
        self.pressure = pressure
        self.humidity = humidity
        self.dewPoint = dewPoint
        self.windSpeed = windSpeed
        self.windDeg = windDeg
        self.weather = weather
        self.clouds = clouds
        self.pop = pop
        self.rain = rain
        self.uvi = uvi
    }
}

// MARK: Daily convenience initializers and mutators

public extension Daily {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Daily.self, from: data)
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
        temp: Temp?? = nil,
        feelsLike: FeelsLike?? = nil,
        pressure: Int?? = nil,
        humidity: Int?? = nil,
        dewPoint: Double?? = nil,
        windSpeed: Double?? = nil,
        windDeg: Int?? = nil,
        weather: [Weather]?? = nil,
        clouds: Int?? = nil,
        pop: Double?? = nil,
        rain: Double?? = nil,
        uvi: Double?? = nil
    ) -> Daily {
        return Daily(
            dt: dt ?? self.dt,
            sunrise: sunrise ?? self.sunrise,
            sunset: sunset ?? self.sunset,
            temp: temp ?? self.temp,
            feelsLike: feelsLike ?? self.feelsLike,
            pressure: pressure ?? self.pressure,
            humidity: humidity ?? self.humidity,
            dewPoint: dewPoint ?? self.dewPoint,
            windSpeed: windSpeed ?? self.windSpeed,
            windDeg: windDeg ?? self.windDeg,
            weather: weather ?? self.weather,
            clouds: clouds ?? self.clouds,
            pop: pop ?? self.pop,
            rain: rain ?? self.rain,
            uvi: uvi ?? self.uvi
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
