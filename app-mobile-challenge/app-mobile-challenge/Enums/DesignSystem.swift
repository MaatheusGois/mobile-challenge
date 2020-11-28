//
//  DesignSystem.swift
//  app-mobile-challenge
//
//  Created by Matheus Silva on 28/11/20.
//

import UIKit

enum DesignSystem {
    enum Spacing {
        static let `default`: CGFloat = 10
        static let medium: CGFloat = 20
        static let large: CGFloat = 30
    }
    
    enum Button {
        static let height: CGFloat = 24
        static let width: CGFloat = 140
        
        enum Currency {
            static let height: CGFloat = 55
            static let width: CGFloat = 80
            static let widthMultiplier: CGFloat = 0.3
        }
        enum Back {
            static let height: CGFloat = 24
            static let width: CGFloat = 24
        }
    }
    
    

    
    enum Label {
        static let height: CGFloat = 30
    }

    
    enum TextField {
        static let height: CGFloat = 50
    }

    
    enum Result {
        static let widthMultiplier: CGFloat = 0.7
        static let height: CGFloat = 50
    }

    enum SegmentedControl {
        static let widthMultiplier: CGFloat = 0.6
        static let heightMultiplier: CGFloat = 0.15
    }
    
    enum Icons {
        static let coins: UIImage? = UIImage(named: "moedas")
        static let star: UIImage? = UIImage(named: "estrela")
        static let star_fill: UIImage? = UIImage(named: "estrela_preenchida")
        static let back: UIImage? = UIImage(named: "voltar")
    }
    
    enum Colors {
        static let primary: UIColor? = UIColor(named: "primaria")
        static let secondary: UIColor? = UIColor(named: "secundaria")
        static let background: UIColor? = UIColor(named: "background")
    }
}
