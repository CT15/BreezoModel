//
//  BreezoForecast.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 30/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

/*
 The Breezometer Forecast model structure.
 The structure is dependent on AirQuality model.
 Change the properties of AirQuality structure to match the need of your application.
 */
public struct BreezoForecast: BreezoFilteredData {
    public let forecast: [AirQuality];
}

extension BreezoForecast {
    public init(from service: BreezoForecastService) {
        var data = [AirQuality]()

        service.forecast.forEach {
            data.append(AirQuality(from: $0))
        }

        forecast = data
    }
}
