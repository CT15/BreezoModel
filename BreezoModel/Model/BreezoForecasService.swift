//
//  BreezoForecastService.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 30/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

import UIKit

/**
 Intermediary between BreezoForecast structure and forecast JSON data obtained from Breezometer.
 */
public struct BreezoForecastService: Decodable {
    public let forecast: [AirQualityService]
    
}
