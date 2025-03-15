//
//  ExteionsLayuot.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 14.03.2025.
//

import UIKit

extension OnbordingViewController {
    func setupLayuot() {
       NSLayoutConstraint.activate([
           backroundImage.topAnchor.constraint(equalTo: view.topAnchor),
           backroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
           backroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
           backroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           
           labelStarWars.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           labelStarWars.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           labelStarWars.widthAnchor.constraint(equalToConstant: 200),
           labelStarWars.heightAnchor.constraint(equalToConstant: 200),
           
           pushMainScreen.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -20),
           pushMainScreen.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: -20),
           pushMainScreen.widthAnchor.constraint(equalToConstant: 100),
           pushMainScreen.heightAnchor.constraint(equalToConstant: 40)
       ])
   }
}
