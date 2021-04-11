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
		
		preferences[.latitude] = getPreference(forKeyPath: .openWeatherSettings, .latitude) ?? "37.345657"
		preferences[.longitude] = getPreference(forKeyPath: .openWeatherSettings, .longitude) ?? "-95.41122"
		preferences[.language] = getPreference(forKeyPath: .openWeatherSettings, .language) ?? OpenWeatherLanguage.English.rawValue
		preferences[.units] = getPreference(forKeyPath: .openWeatherSettings, .units) ?? OpenWeatherUnit.standard.rawValue
		preferences[.apiKey] = getPreference(forKeyPath: .openWeatherSettings, .apiKey) ?? "myAPIkey"
		
		return preferences
	}
	
}
