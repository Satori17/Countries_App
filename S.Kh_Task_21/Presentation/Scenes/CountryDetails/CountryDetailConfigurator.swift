//
//  CountryDetailConfigurator.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import UIKit

class CountryDetailConfigurator {
    
    static func configure(vc: CountryDetailViewController) {
        //interactor
        let interactor = CountryDetailInteractor()
        vc.interactor = interactor
        
        //presenter
        let presenter = CountryDetailPresenter()
        interactor.presenter = presenter
        presenter.viewController = vc               
    }
}

