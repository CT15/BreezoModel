//
//  BreezoHistoryService.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 30/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

import UIKit

/**
 Intermediary between BreezoHistory structure and history JSON data obtained from Breezometer.
 */
public struct BreezoHistoryService: Decodable {
    public let history: [AirQualityService]
}
