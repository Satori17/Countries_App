//
//  CountryViewController+TableView.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import UIKit

extension CountryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchController.isActive ? filteredCountries.count : allCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CountryCell.identifier) as? CountryCell {
            cell.configure(getCurrent(with: indexPath))
            
            return cell
        }        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        router?.routeToCountryDetail(country: getCurrent(with: indexPath))
    }
    
    private func getCurrent(with indexPath: IndexPath) -> CountryViewModel {
        let country = searchController.isActive ? filteredCountries[indexPath.row] : allCountries[indexPath.row]
        
        return country
    }
    
}
