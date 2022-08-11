//
//  CountryUrlBuilder.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import Foundation

class CountryUrlBuilder {
    
    static let shared = CountryUrlBuilder()
    
    private(set) var urlString: String
    
    init() {
        urlString = "https://restcountries.com/v2/all"
    }
}
