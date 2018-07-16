//
//  AirQuality.swift
//  AQI Watch
//
//  Created by Calvin Tantio on 2/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

/*
 The Air Quality model structure.
 Can be customized to extract the necessary information from AirQualityService model.
 */
public struct AirQuality {
    public let breezometer_aqi: Int
    public let breezometer_color: String
    public let breezometer_description: String

    public let country_aqi: Int
    public let country_color: String
    public let country_description: String
    public let country_name: String

    public let pollutants: Pollutants
}

extension AirQuality {
    public init(from service: AirQualityService) {
        breezometer_aqi = service.breezometer_aqi
        breezometer_color = service.breezometer_color
        breezometer_description = service.breezometer_description

        country_aqi = service.country_aqi
        country_color = service.country_color
        country_description = service.country_description
        country_name = service.country_name

        pollutants = service.pollutants
    }
}
