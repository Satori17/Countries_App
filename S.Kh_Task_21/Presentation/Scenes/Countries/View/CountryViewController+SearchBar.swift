//
//  CountryViewController+SearchBar.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import UIKit

extension CountryViewController: UISearchBarDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let searchText = searchBar.text
        if let text = searchText {
            filterCountries(with: text)
        }                   
    }
    
    private func filterCountries(with text: String) {
        filteredCountries = allCountries.filter({ country in
            let searchTextMatch = country.name.lowercased().hasPrefix(text.lowercased())
            
            return searchController.searchBar.text != "" ? searchTextMatch : true
        })
        countriesTableView.reloadData()
    }
    
}
