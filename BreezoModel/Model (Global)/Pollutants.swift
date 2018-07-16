//
//  Pollutants.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 16/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

public struct Pollutants: Decodable {
    public let co: Pollutant
    public let no2: Pollutant
    public let o3: Pollutant
    public let pm10: Pollutant
    public let pm25: Pollutant
    public let so2: Pollutant
}
