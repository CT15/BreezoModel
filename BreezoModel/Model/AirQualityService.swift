//
//  AirQualityService.swift
//  AQI Watch
//
//  Created by Calvin Tantio on 2/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

import UIKit

/**
 Intermediary between AirQuality structure and JSON data obtained from Breezometer.
 */
public struct AirQualityService: Decodable {
    public let datetime: String
    public let country_name: String
    public let breezometer_aqi: Int // 0 - 100
    public let breezometer_color: String
    public let breezometer_description: String
    public let country_aqi: Int // 0 - 500
    public let country_aqi_prefix: String
    public let country_color: String
    public let country_description: String
    public let data_valid: Bool
    public let key_valid: Bool
    public let random_recommendations: RandomRecommendations
    public let dominant_pollutant_canonical_name: String
    public let dominant_pollutant_description: String
    public let dominant_pollutant_text: DominantPollutantText
    public let pollutants: Pollutants
}
