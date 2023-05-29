//
//  Reps.swift
//  town square
//
//  Created by Mason Cochran on 5/25/23.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//

// MARK: - Reps
struct Reps: Codable {
    let normalizedInput: NormalizedInput
    let kind: String
    let offices: [Office]
    let officials: [Official]
}


// MARK: - NormalizedInput
struct NormalizedInput: Codable {
    let line1, city, state, zip: String
}

// MARK: - Office
struct Office: Codable {
    let name, divisionID: String
    let levels, roles: [String]
    let officialIndices: [Int]

    enum CodingKeys: String, CodingKey {
        case name
        case divisionID = "divisionId"
        case levels, roles, officialIndices
    }
}

// MARK: - Official
struct Official: Codable {
    let name: String
    let address: [NormalizedInput]
    let party: String
    let phones: [String]
    let urls: [String]
    let photoURL: String?
    let channels: [Channel]
    let geocodingSummaries: [GeocodingSummary]

    enum CodingKeys: String, CodingKey {
        case name, address, party, phones, urls
        case photoURL = "photoUrl"
        case channels, geocodingSummaries
    }
}

// MARK: - Channel
struct Channel: Codable {
    let type, id: String
}

// MARK: - GeocodingSummary
struct GeocodingSummary: Codable {
    let queryString: String
    let featureID: FeatureID
    let featureType: String
    let positionPrecisionMeters: Double
    let addressUnderstood: Bool

    enum CodingKeys: String, CodingKey {
        case queryString
        case featureID = "featureId"
        case featureType, positionPrecisionMeters, addressUnderstood
    }
}

// MARK: - FeatureID
struct FeatureID: Codable {
    let cellID, fprint: String

    enum CodingKeys: String, CodingKey {
        case cellID = "cellId"
        case fprint
    }
}
