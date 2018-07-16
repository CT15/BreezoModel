//
//  Pollutant.swift
//  BreezoModel
//
//  Created by Calvin Tantio on 16/7/18.
//  Copyright © 2018 Calvin Tantio. All rights reserved.
//

public struct Pollutant: Decodable {
    public let pollutant_description: String
    public let units: String
    public let concentration: Float?

    public init(description: String, unit: String, concentration: Float? = nil) {
        self.pollutant_description = description
        self.units = unit
        self.concentration = concentration
    }
}
