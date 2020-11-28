//
//  TitleLabel.swift
//  app-mobile-challenge
//
//  Created by Matheus Silva on 28/11/20.
//

import UIKit

final class TitleLabel: UILabel {
    
    // - MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func style() {
        textAlignment = .center
        font = TextStyle.display3.font
        tintColor = DesignSystem.Colors.secondary
    }
}
