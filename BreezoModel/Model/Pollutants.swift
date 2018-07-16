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

    public static func checmicalFormula(of pollutant: Pollutant, proper: Bool = true) -> String? {
        switch pollutant.pollutant_description {
        case "Carbon monoxide":
            return proper ? "CO" : "co"
        case "Nitrogen dioxide":
            return proper ? "NO₂" : "no2"
        case "Ozone":
            return proper ? "O₃" : "o3"
        case "Inhalable particulate matter (<10µm)":
            return proper ? "PM₁₀" : "pm10"
        case "Fine particulate matter (<2.5µm)":
            return proper ? "PM₂.₅" : "pm25"
        case "Sulfur dioxide":
            return proper ? "SO₂" : "so2"
        default:
            return nil
        }
    }
}
