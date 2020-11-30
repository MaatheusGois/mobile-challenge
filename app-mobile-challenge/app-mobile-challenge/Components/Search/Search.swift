//
//  Search.swift
//  app-mobile-challenge
//
//  Created by Matheus Silva on 28/11/20.
//

import UIKit

final class Search: UISearchBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Pesquise por uma moeda")
    }
    
    /// Configuração do componente de pesquisa.
    private func layout() {
        barTintColor = .white
        searchTextField.backgroundColor = .white
        tintColor = DesignSystem.Colors.secondary
        placeholder = " Pesquise por uma moeda..."
        layer.borderWidth = 1.5
        layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.968627451, blue: 0.9803921569, alpha: 1)
        clipsToBounds = true
        backgroundImage = UIImage() //Maior roubo da história...
        isTranslucent = false
        //Rounded
        layer.cornerRadius = 20
    }
}
