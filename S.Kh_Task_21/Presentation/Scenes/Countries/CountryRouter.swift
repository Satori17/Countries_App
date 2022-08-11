//
//  CountryRouter.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CountryRouterProtocol {
    func routeToCountryDetail(country: CountryViewModel)
}


class CountryRouter {
    weak var viewController: CountryViewController?
    var completionHandler: ((CountryViewModel) -> ())?
}


extension CountryRouter: CountryRouterProtocol {
    
    func routeToCountryDetail(country: CountryViewModel) {
        if let countryDetailVC = UIStoryboard(name: CountryDetailViewController.identifier, bundle: nil).instantiateViewController(withIdentifier: CountryDetailViewController.identifier) as? CountryDetailViewController {
            CountryDetailConfigurator.configure(vc: countryDetailVC)
            countryDetailVC.setupActivityIndicator()
            countryDetailVC.modalPresentationStyle = .fullScreen
            viewController?.present(countryDetailVC, animated: true, completion: {
                let countryInfo = CountryDetail.InfoData(country: country)
                countryDetailVC.interactor?.getCountry(request: countryInfo)
                countryDetailVC.activityIndicator.stopAnimating()
                countryDetailVC.customView.isHidden = true
            })
        }
    }
    
}