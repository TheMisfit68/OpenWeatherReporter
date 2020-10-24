//
//  OpenWeatherProtocol.swift
//  
//
//  Created by Jan Verrept on 28/03/2020.
//

import Foundation

public struct OpenWeatherProtocol{
        
    public let baseURL: String = ""
        
    public let requiredCommandParameters: [OpenWeatherReportType : [OpenWeatherReportParameter]] = [
        
        .twoDayHourlyReport : [.latitude, .longitude, .exclude, .units, .language, .apiKey]
        
    ]
    
    public init(){
    }
    
}
