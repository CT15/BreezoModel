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

    // There are only 2 different pollutants units.
    // "ppb" is already in the correct format.
    // "μg/m³" is returned if units is "ug/m3".
    public var formattedUnit: String {
        return self.units == "ug/m3" ? "μg/m³" : "ppb"
    }
}
