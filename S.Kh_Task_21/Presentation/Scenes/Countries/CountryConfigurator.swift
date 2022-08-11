//
//  CountryConfigurator.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import UIKit

class CountryConfigurator {
    
    static func configure(vc: CountryViewController) {
        //interactor
        let interactor = CountryInteractor()
        vc.interactor = interactor
        
        //presenter
        let presenter = CountryPresenter()
        interactor.presenter = presenter
        presenter.viewController = vc
        
        //router
        let router = CountryRouter()
        vc.router = router
        router.viewController = vc
        
    }
}

