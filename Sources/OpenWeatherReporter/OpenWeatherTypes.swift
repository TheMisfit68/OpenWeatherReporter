//
//  OpenWeatherTypes.swift
//  
//
//  Created by Jan Verrept on 19/10/2020.
//

import Foundation
import JVCocoa

public enum OpenWeatherReportType:String, StringRepresentableEnum{
    
    case twoDayHourlyReport = "https://api.openweathermap.org/data/2.5/onecall"
    
}

public enum OpenWeatherReportParameter:String, StringRepresentableEnum{
    
    case latitude = "lat"
    case longitude = "lon"
    case exclude
    case units
    case language = "lan"
    case apiKey = "appid"
}

public enum OpenWeatherExclude:String, StringRepresentableEnum{
    
    case current
    case minutely
    case hourly
    case daily
    case alerts
    
}

public enum OpenWeatherUnit:String, StringRepresentableEnum{
    
    case standard
    case metric
    case imperial
    
}

public enum OpenWeatherLanguage:String, StringRepresentableEnum{
    
    case Afrikaans = "af"
    case Albanian = "al"
    case Arabic = "ar"
    case Azerbaijani = "az"
    case Bulgarian = "bg"
    case Catalan = "ca"
    case Czech = "cz"
    case Danish = "da"
    case German = "de"
    case Greek = "el"
    case English = "en"
    case Basque = "eu"
    case Persian_Farsi = "fa"
    case Finnish = "fi"
    case French = "fr"
    case Galician = "gl"
    case Hebrew = "he"
    case Hindi = "hi"
    case Croatian = "hr"
    case Hungarian = "hu"
    case Indonesian = "id"
    case Italian = "it"
    case Japanese = "ja"
    case Korean = "kr"
    case Latvian = "la"
    case Lithuanian = "lt"
    case Macedonian = "mk"
    case Norwegian = "no"
    case Dutch = "nl"
    case Polish = "pl"
    case Portuguese = "pt"
    case Português_Brasil = "pt_br"
    case Romanian = "ro"
    case Russian = "ru"
    case Swedish = "sv"
    case Slovak = "sk"
    case Slovenian = "sl"
    case Spanish = "sp"
    case Serbian = "sr"
    case Thai = "th"
    case Turkish = "tr"
    case Ukrainian = "ua"
    case Vietnamese = "vi"
    case Chinese_Simplified = "zh_cn"
    case Chinese_Traditional = "zh_tw"
    case Zulu = "zu"
    
    
}
