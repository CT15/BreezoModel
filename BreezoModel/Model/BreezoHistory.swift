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
 */
public struct BreezoHistory: BreezoFilteredData {
    public let history: [AirQuality];
}

extension BreezoHistory {
    public init(from service: BreezoHistoryService) {
        var data = [AirQuality]()

        service.history.forEach {
            data.append(AirQuality(from: $0))
        }

        history = data
    }
}
