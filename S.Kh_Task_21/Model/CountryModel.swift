//
//  CountryModel.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 10.08.22.
//

import Foundation

//MARK: - Country
struct Country: Codable {
    let name: String
    let alpha3Code: String
    let capital: String?
    let region: Region
    let population: Int
    let flag: String
    let currencies: [Currency]?
}

//MARK: - Region
enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case antarcticOcean = "Antarctic Ocean"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
    case polar = "Polar"
}


// MARK: - Currency
struct Currency: Codable {
    let code, name, symbol: String
}
