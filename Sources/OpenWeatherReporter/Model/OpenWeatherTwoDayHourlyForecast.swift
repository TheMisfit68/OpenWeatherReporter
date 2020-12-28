import Foundation
import JVCocoa

extension OpenWeatherTwoDayHourlyForecast:SQLRecordable{}
extension Current:SQLRecordable{}
extension Minutely:SQLRecordable{}
extension Daily:SQLRecordable{}
extension Weather:SQLRecordable{}
extension Rain:SQLRecordable{}
extension Main:SQLRecordable{}
extension Temp:SQLRecordable{}
extension FeelsLike:SQLRecordable{}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let openWeatherTwoDayHourlyForecast = try? newJSONDecoder().decode(OpenWeatherTwoDayHourlyForecast.self, from: jsonData)

import Foundation

// MARK: - OpenWeatherTwoDayHourlyForecast
public struct OpenWeatherTwoDayHourlyForecast: Codable {
    public let lat: Double
    public let lon: Double
    public let timezone: String
    public let timezoneOffset: Int
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

    public init(lat: Double, lon: Double, timezone: String, timezoneOffset: Int, current: Current, minutely: [Minutely], hourly: [Current], daily: [Daily]) {
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

// MARK: - Current
public struct Current: Codable {
    public let dt: Int
    public let sunrise: Int?
    public let sunset: Int?
    public let temp: Double
    public let feelsLike: Double
    public let pressure: Int
    public let humidity: Int
    public let dewPoint: Double
    public let uvi: Double?
    public let clouds: Int
    public let visibility: Int
    public let windSpeed: Double
    public let windDeg: Int
    public let weather: [Weather]
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

    public init(dt: Int, sunrise: Int?, sunset: Int?, temp: Double, feelsLike: Double, pressure: Int, humidity: Int, dewPoint: Double, uvi: Double?, clouds: Int, visibility: Int, windSpeed: Double, windDeg: Int, weather: [Weather], pop: Double?) {
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

// MARK: - Rain
struct Rain: Codable {
    let the1H: Double

    enum CodingKeys: String, CodingKey {
        case the1H = "1h"
    }
}

// MARK: - Weather
public struct Weather: Codable {
    public let id: Int
    public let main: Main
    public let weatherDescription: Description
    public let icon: Icon

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case main = "main"
        case weatherDescription = "description"
        case icon = "icon"
    }

    public init(id: Int, main: Main, weatherDescription: Description, icon: Icon) {
        self.id = id
        self.main = main
        self.weatherDescription = weatherDescription
        self.icon = icon
    }
}

// MARK: - Daily
public struct Daily: Codable {
    public let dt: Int
    public let sunrise: Int
    public let sunset: Int
    public let temp: Temp
    public let feelsLike: FeelsLike
    public let pressure: Int
    public let humidity: Int
    public let dewPoint: Double
    public let windSpeed: Double
    public let windDeg: Int
    public let weather: [Weather]
    public let clouds: Int
    public let pop: Double
    public let uvi: Double?
    public let rain: Double?

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
        case uvi = "uvi"
        case rain = "rain"
    }

    public init(dt: Int, sunrise: Int, sunset: Int, temp: Temp, feelsLike: FeelsLike, pressure: Int, humidity: Int, dewPoint: Double, windSpeed: Double, windDeg: Int, weather: [Weather], clouds: Int, pop: Double, uvi: Double, rain: Double?) {
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
        self.uvi = uvi
        self.rain = rain
    }
}

// MARK: - FeelsLike
public struct FeelsLike: Codable {
    public let day: Double
    public let night: Double
    public let eve: Double
    public let morn: Double

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }

    public init(day: Double, night: Double, eve: Double, morn: Double) {
        self.day = day
        self.night = night
        self.eve = eve
        self.morn = morn
    }
}

// MARK: - Temp
public struct Temp: Codable {
    public let day: Double
    public let min: Double
    public let max: Double
    public let night: Double
    public let eve: Double
    public let morn: Double

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case min = "min"
        case max = "max"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }

    public init(day: Double, min: Double, max: Double, night: Double, eve: Double, morn: Double) {
        self.day = day
        self.min = min
        self.max = max
        self.night = night
        self.eve = eve
        self.morn = morn
    }
}

// MARK: - Minutely
public struct Minutely: Codable {
    public let dt: Int
    public let precipitation: Int

    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case precipitation = "precipitation"
    }

    public init(dt: Int, precipitation: Int) {
        self.dt = dt
        self.precipitation = precipitation
    }
}

