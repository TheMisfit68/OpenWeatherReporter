//
//  OpenWeatherReporter.swift
//
//
//  Created by Jan Verrept on 19/10/2020.
//

import Foundation
import Combine
import JVCocoa


public class OpenWeatherReporter:Singleton {
    
    public static var shared:OpenWeatherReporter = OpenWeatherReporter()

    let standardUserDefaults = UserDefaults.standard
    
    static let InvertersDataFileName = "WeatherData.sqlite"
    
    static let DefaultFilemanager =  FileManager.default
    static let ResourceFolder = Bundle.module
    
    static let SupportFolder = DefaultFilemanager.urls(for: .applicationSupportDirectory, in: .userDomainMask).first?.appendingPathComponent("OpenWeather")
    static let WeatherDataFile = SupportFolder?.appendingPathComponent(InvertersDataFileName)
    public static var WeatherDataBase:SQLdatabase! = nil
    
    var reportPublisher:AnyPublisher<OpenWeatherTwoDayHourlyForecast?, Error>!
    var reportReceiver:Cancellable!
    
    var restAPI:RestAPI<OpenWeatherReportType, OpenWeatherReportParameter>
    
    public var twoDayHourlyReport:OpenWeatherTwoDayHourlyForecast!{
        didSet{
            updateTwoDaysForecast() //Update any predictions variables based on this reports data
        }
    }
    
    public var rainingNow:Bool?
    
    public func rainIsExpected(in timeinterval:TimeInterval)->Bool?{
        let currentTimestamp = Date().timeIntervalSince1970
        let lastTimeStamp = Date().addingTimeInterval(timeinterval).timeIntervalSince1970
//        let recordsToeEveluate:[Any] = records(from: twoDayHourlyReport, between: currentTimestamp...lastTimeStamp)

        //TODO: - implment this further
        return rainingNow! || true
    }
    
    private init(){
        
        OpenWeatherReporter.InstallResourcesInSupportFolder()
        if let dbasePath =  OpenWeatherReporter.WeatherDataFile?.path, OpenWeatherReporter.DefaultFilemanager.fileExists(atPath: dbasePath){
            OpenWeatherReporter.WeatherDataBase = SQLdatabase.Open(file:dbasePath)
        }

        let userSettings:[String:Any] = standardUserDefaults.dictionary(forKey: "OpenWeatherSettings") ?? [:]
        
        var userParameters:[OpenWeatherReportParameter:String] = [:]
        userParameters[.latitude] = userSettings["Latitude"] as? String ?? "37.345657"
        userParameters[.longitude] = userSettings["Longitude"] as? String ?? "-95.41122"
        userParameters[.language] =  OpenWeatherLanguage.English.rawValue
        userParameters[.units] = userSettings["Units"] as? String ?? OpenWeatherUnit.standard.rawValue
        userParameters[.apiKey] = userSettings["ApiKey"] as? String ?? "myAPIkey"
        
        let openWeatherProtocol = OpenWeatherProtocol()
        restAPI = RestAPI<OpenWeatherReportType, OpenWeatherReportParameter>(baseURL: openWeatherProtocol.baseURL, endpointParameters: openWeatherProtocol.requiredCommandParameters,baseParameters: userParameters)
        
    }
    
    
    public func getReport(_ reportType:OpenWeatherReportType, excludeFromReport:[OpenWeatherExclude]=[]){
        
        var parameters:[OpenWeatherReportParameter:String] = [:]
        if !excludeFromReport.isEmpty {
            parameters = [.exclude: excludeFromReport.map{$0.rawValue}.joined(separator: ", ")]
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
    
    private func updateTwoDaysForecast(){
        self.rainingNow = (twoDayHourlyReport.current?.weather.first?.main == .Rain)
        OpenWeatherReporter.WeatherDataBase.autoCreateTableFor(record: twoDayHourlyReport!)
    }
    
    private func records(from:OpenWeatherReportType, between:Range<TimeInterval>)->[Any]{
        
        
        return []
    }
    
    private class func InstallResourcesInSupportFolder() {
        
        if let supportFolder = SupportFolder {
            
            // Create supportFolder if needed
            DefaultFilemanager.checkForDirectory(supportFolder, createIfNeeded: true)
            
            // Install the files in it
            let supportfilesToInstall = [WeatherDataFile]
            
            for supportfile in supportfilesToInstall{
                
                let allReadyInstalled = DefaultFilemanager.fileExists(atPath:supportfile!.path)
                if !allReadyInstalled,
                   let fileName = supportfile?.lastPathComponent,
                   let resourceURL = ResourceFolder.url(forResource: fileName, withExtension: ""){
                    
                    do {
                        try FileManager.default.copyItem(at: resourceURL, to: supportfile!)
                    } catch {
                        //TODO: - finish errorHandling
                    }
                    
                }
            }
        }
        
    }
    
}


