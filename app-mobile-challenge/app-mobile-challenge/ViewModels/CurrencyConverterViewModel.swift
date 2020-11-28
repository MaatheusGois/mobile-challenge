//
//  CurrencyConverterViewModel.swift
//  app-mobile-challenge
//
//  Created by Matheus Silva on 27/11/20.
//

import UIKit


final class CurrencyConverterViewModel {
    
    private let coordinator: CurrencyConverterCoordinatorService
    
    init(coordinator: CurrencyConverterCoordinatorService) {
        self.coordinator = coordinator
    }

    func pickSupporteds() {
        coordinator.showSupporteds()
    }
}