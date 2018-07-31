//
//  BreezoHistory.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 30/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

/*
 The Breezometer History model structure.
 The structure is dependent on AirQuality model.
 Change the properties of AirQuality structure to match the need of your application.
 This is just a wrapper structure.
 Use array of AirQualityService to decode history JSON data from Breezometer
*/
public struct BreezoHistory: BreezoFilteredData {
    public let history: [AirQuality]

    public init(history: [AirQuality]) {
        self.history = history
    }
}
