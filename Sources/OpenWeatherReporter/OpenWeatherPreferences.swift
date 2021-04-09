//
//  OpenWeatherPreferences.swift
//  
//
//  Created by Jan Verrept on 06/04/2021.
//

import Foundation
import JVCocoa


extension OpenWeatherReporter:PreferenceBased {

	public enum PreferenceKey:String, StringRepresentableEnum{
		
		case openWeatherSettings
		case latitude
		case longitude
		case language
		case units
		case apiKey
				
	}
		
	public var preferences:[OpenWeatherReportParameter:String]{
		
		var preferences:[OpenWeatherReportParameter:String] = [:]
		
		preferences[.latitude] = getPreference(forKey: .openWeatherSettings, secondaryKey: .latitude) ?? "37.345657"
		preferences[.longitude] = getPreference(forKey: .openWeatherSettings, secondaryKey: .longitude) ?? "-95.41122"
		preferences[.language] = getPreference(forKey: .openWeatherSettings, secondaryKey: .language) ?? OpenWeatherLanguage.English.rawValue
		preferences[.units] = getPreference(forKey: .openWeatherSettings, secondaryKey: .units) ?? OpenWeatherUnit.standard.rawValue
		preferences[.apiKey] = getPreference(forKey: .openWeatherSettings, secondaryKey: .apiKey) ?? "myAPIkey"
		
		return preferences
	}
	
}
