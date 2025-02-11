//
//  ManagerConfigureViews.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 11.02.2025.
//

import UIKit

class ManagerConfigureViews {
    
    static let shared = ManagerConfigureViews()
    
    //MARK: Label
    func configureLabel(title: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.text = title
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 50, weight: .bold)
        return label
    }
    
}
