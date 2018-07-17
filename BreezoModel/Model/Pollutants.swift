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

    /// Returns the formatted formula of the pollutant provided.
    /// Returns nil if the pollutant does not contribute towards AQI calculation.
    /// - Parameters:
    ///     - pollutant: A pollutant object
    public static func checmicalFormula(of pollutant: Pollutant) -> String? {
        return self.chemicalFormula(of: pollutant.pollutant_description)
    }

    /// Returns the formatted formula of the pollutant string provided.
    /// Returns nil if the pollutant does not contribute towards AQI calculation.
    /// - Parameters:
    ///     - pollutant: Either a pollutant name e.g. "Carbon monoxide" or unformatted chemical
    ///                  formula e.g. "co"
    public static func chemicalFormula(of pollutant: String) -> String? {
        switch pollutant {
        case "Carbon monoxide", "co":
            return "CO"
        case "Nitrogen dioxide", "no2":
            return "NO₂"
        case "Ozone", "o3":
            return "O₃"
        case "Inhalable particulate matter (<10µm)", "pm10":
            return "PM₁₀"
        case "Fine particulate matter (<2.5µm)", "pm25":
            return "PM₂.₅"
        case "Sulfur dioxide", "so2" :
            return "SO₂"
        default:
            return nil
        }
    }
}
