//
//  OpenWeatherReporter.swift
//
//
//  Created by Jan Verrept on 19/10/2020.
//

import Foundation
import Combine
import JVCocoa

@available(OSX 10.15, *)
public class OpenWeatherReporter {
    
    let standardUserDefaults = UserDefaults.standard
    
    var reportPublisher:AnyPublisher<OpenWeatherTwoDayHourlyForecast?, Error>!
    var reportReceiver:Cancellable!
    
    var restAPI:RestAPI<OpenWeatherReportType, OpenWeatherReportParameter>
    
    public var twoDayHourlyReport:OpenWeatherTwoDayHourlyForecast!
    public var rainingNow:Bool{
        twoDayHourlyReport.current.weather.first?.main == .rain
    }
    
    public var rainIsExpected:Bool{
        rainingNow || true
    }
    
    public init(){
        
        let userSettings:[String:Any] = standardUserDefaults.dictionary(forKey: "OpenWeatherSettings") ?? [:]
        
        var userParameters:[OpenWeatherReportParameter:String] = [:]
        userParameters[.latitude] = userSettings["Latitude"] as? String ?? "37.345657"
        userParameters[.longitude] = userSettings["Longitude"] as? String ?? "-95.41122"
        userParameters[.language] = userSettings["Language"] as? String ?? OpenWeatherLanguage.English.rawValue
        userParameters[.units] = userSettings["Units"] as? String ?? OpenWeatherUnit.standard.rawValue
        userParameters[.apiKey] = userSettings["ApiKey"] as? String ?? "myAPIkey"
        
        let openWeatherProtocol = OpenWeatherProtocol()
        restAPI = RestAPI<OpenWeatherReportType, OpenWeatherReportParameter>(baseURL: openWeatherProtocol.baseURL, endpointParameters: openWeatherProtocol.requiredCommandParameters,baseParameters: userParameters)
        
    }
    
    
    public func getReport(_ reportType:OpenWeatherReportType, excludeFromReport:[OpenWeatherExclude]=[]){
        
        var parameters:[OpenWeatherReportParameter:String] = [:]
        if !excludeFromReport.isEmpty {
            parameters = [.exclude:excludeFromReport.map{$0.rawValue}.joined(separator: ",")]
        }
        reportPublisher = restAPI.publish(command: reportType, parameters: parameters)
        reportReceiver = reportPublisher
            .sink(receiveCompletion: {completion in
                
                switch completion{
                case .finished:
                    break
                case .failure(let error):
                    print(error)
                }
                
            },receiveValue: {value in
                if let report = value{
                    switch reportType {
                    case .twoDayHourlyReport:
                        self.twoDayHourlyReport = report
                    }
                    
                }                
            }
            )
    }
    
}


