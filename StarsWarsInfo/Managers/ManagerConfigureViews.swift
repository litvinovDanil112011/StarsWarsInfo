//
//  ManagerConfigureViews.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 11.02.2025.
//

import UIKit

class ManagerConfigureViews {
    
    static let shared = ManagerConfigureViews()
    let fontSW = UIFont(name: "StarJediOutline-y0xm", size: 30.0)
    
    //MARK: Label
    public func configureLabel(title: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Constants.colorTestStarWars
        label.textAlignment = .center
        label.text = title
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        return label
    }
    
    public func configureButton(title: String, colorBackground: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(colorBackground, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = Constants.colorTestStarWars
        return button
    }
    
    public func configureTable() -> UITableView {
        let tablr = UITableView(frame: .zero, style: .insetGrouped)
        tablr.translatesAutoresizingMaskIntoConstraints = false
        return tablr
    }
    
}
