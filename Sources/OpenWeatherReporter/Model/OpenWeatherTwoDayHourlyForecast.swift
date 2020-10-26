// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let twoDayHourlyForecast = try? newJSONDecoder().decode(TwoDayHourlyForecast.self, from: jsonData)

import Foundation

// MARK: - TwoDayHourlyForecast
public struct OpenWeatherTwoDayHourlyForecast: Codable {
    let lat: Double
    let lon: Double
    let timezone: String
    let timezoneOffset: Int
    let current: Current
    let minutely: [Minutely]
    let hourly: [Current]
    let daily: [Daily]

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
}

// MARK: - Current
struct Current: Codable {
    let dt: Int
    let sunrise: Int?
    let sunset: Int?
    let temp: Double
    let feelsLike: Double
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
    let uvi: Double?
    let clouds: Int
    let visibility: Int
    let windSpeed: Double
    let windDeg: Int
    let weather: [Weather]
    let pop: Double?
    let rain: Rain?

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
        case rain = "rain"
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
struct Weather: Codable {
    let id: Int
    let main: Main
    let weatherDescription: Description
    let icon: Icon

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case main = "main"
        case weatherDescription = "description"
        case icon = "icon"
    }
}

enum Icon: String, Codable {
    case the01D = "01d"
    case the02D = "02d"
    case the03D = "03d"
    case the04D = "04d"
    case the05D = "05d"
    case the06D = "06d"
    case the07D = "07d"
    case the08D = "08d"
    case the09D = "09d"
    case the10D = "10d"
    case the11D = "11d"
    case the12D = "12d"
    case the13D = "13d"
    
    case the01N = "01n"
    case the02N = "02n"
    case the03N = "03n"
    case the04N = "04n"
    case the05N = "05n"
    case the06N = "06n"
    case the07N = "07n"
    case the08N = "08n"
    case the09N = "09n"
    case the10N = "10n"
    case the11N = "11n"
    case the12N = "12n"
    case the13N = "13n"

    case the50D = "50d"
}

enum Main: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
}

enum Description: String, Codable {
    case brokenClouds = "broken clouds"
    case clearSky = "clear sky"
    case fewClouds = "few clouds"
    case lightRain = "light rain"
    case moderateRain = "moderate rain"
    case overcastClouds = "overcast clouds"
    case scatteredClouds = "scattered clouds"
}

// MARK: - Daily
struct Daily: Codable {
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let temp: Temp
    let feelsLike: FeelsLike
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
    let windSpeed: Double
    let windDeg: Int
    let weather: [Weather]
    let clouds: Int
    let pop: Double
    let rain: Double?
    let uvi: Double

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
}

// MARK: - FeelsLike
struct FeelsLike: Codable {
    let day: Double
    let night: Double
    let eve: Double
    let morn: Double

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }
}

// MARK: - Temp
struct Temp: Codable {
    let day: Double
    let min: Double
    let max: Double
    let night: Double
    let eve: Double
    let morn: Double

    enum CodingKeys: String, CodingKey {
        case day = "day"
        case min = "min"
        case max = "max"
        case night = "night"
        case eve = "eve"
        case morn = "morn"
    }
}

// MARK: - Minutely
struct Minutely: Codable {
    let dt: Int
    let precipitation: Int

    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case precipitation = "precipitation"
    }
}
