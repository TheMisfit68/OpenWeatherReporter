//
//  OpenWeatherEnums.swift
//  
//
//  Created by Jan Verrept on 05/11/2020.
//

import Foundation


public enum Main: String, Codable {
    case Thunderstorm = "Thunderstorm"
    case Drizzle = "Drizzle"
    case Rain = "Rain"
    case Snow = "Snow"
    case Mist = "Mist"
    case Smoke = "Smoke"
    case Haze = "Haze"
    case Dust = "Dust"
    case Fog = "Fog"
    case Sand = "Sand"
    case Ash = "Ash"
    case Squal = "Squall"
    case Tornado = "Tornado"
    case Clear = "Clear"
    case Clouds = "Clouds"
}

public enum Icon: String, Codable {
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
    case the50N = "50n"
}

public enum Description: String, Codable {
    
    // Thunderstorm
    
    case thunderstormWithLightRain = "thunderstorm with light rain"
    case thunderstormWithRain = "thunderstorm with rain"
    case thunderstormWithHeavyRain = "thunderstorm with heavy rain"
    case lightThunderstorm = "light thunderstorm"
    case thunderstorm = "thunderstorm"
    case heavyThunderstorm = "heavy thunderstorm"
    case raggedThunderstorm = "ragged thunderstorm"
    case thunderstormWithLightDrizzle = "thunderstorm with light drizzle"
    case thunderstormWithDrizzle = "thunderstorm with drizzle"
    case thunderstormWithHeavyDrizzle  =  "thunderstorm with heavy drizzle"
    
    // Drizzle
    case lightIntensityDrizzle = "light intensity drizzle"
    case drizzle = "drizzle"
    case heavyIntensityDrizzle = "heavy intensity drizzle"
    case lightIntensityDrizzleRain = "light intensity drizzle rain"
    case drizzleRain = "drizzle rain"
    case heavyIntensityDrizzleRain = "heavy intensity drizzle rain"
    case showerRainAndDrizzle = "shower rain and drizzle"
    case heavyShowerRainAndDrizzle = "heavy shower rain and drizzle"
    case showerDrizzle = "shower drizzle"
    
    // Rain
    case lightRain = "light rain"
    case moderateRain = "moderate rain"
    case heavyIntensityRain = "heavy intensity rain"
    case veryHeavyRain = "very heavy rain"
    case extremeRain = "extreme rain"
    case freezingRain = "freezing rain"
    case lightIntensityShowerRain = "light intensity shower rain"
    case showerRain = "shower rain"
    case heavyIntensityShowerRain = "heavy intensity shower rain"
    case raggedShowerRain = "ragged shower rain"
    
    // Snow
    case lightSnow = "light snow"
    case Snow = "Snow"
    case HeavySnow = "Heavy snow"
    case Sleet = "Sleet"
    case LightShowerSleet = "Light shower sleet"
    case ShowerSleet = "Shower sleet"
    case LightRainAndSnow = "Light rain and snow"
    case RainAndSnow = "Rain and snow"
    case LightShowerSnow = "Light shower snow"
    case ShowerSnow = "Shower snow"
    case HeavyShowerSnow = "Heavy shower snow"
    
    // Atmosphere
    case Mist = "Mist"
    case Smoke = "Smoke"
    case Haze = "Haze"
    case sandDustWhirls = "sand/ dust whirls"
    case fog = "fog"
    case sand = "sand"
    case dust = "dust"
    case volcanicAsh = "volcanic ash"
    case squalls = "squalls"
    case tornado = "tornado"
    
    // Clear
    case clearSky = "clear sky"
    
    // Clouds
    case fewClouds = "few clouds"
    case scatteredClouds = "scattered clouds"
    case brokenClouds = "broken clouds"
    case overcastClouds = "overcast clouds"

}


