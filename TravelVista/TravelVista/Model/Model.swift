//
//  Model.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import Foundation

// Représente les sections pour classer les pays
struct Region: Codable, Hashable {
    var name: String
    var countries: [Country]
}

// Représente toutes les informations d'un pays
struct Country: Codable, Hashable {
    var name: String
    var capital: String
    var description: String
    var rate: Int
    var pictureName: String
    var coordinates: Coordinates
}

// Représente les coordonnées d'une capitale
struct Coordinates: Codable, Hashable {
    var latitude: Double
    var longitude: Double
}
