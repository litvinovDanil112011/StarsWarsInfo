//
//  OnbordingViewController.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 11.02.2025.
//

import UIKit

final class OnbordingViewController: UIViewController {
    //MARK: Var
    let backroundImage = UIImageView(image: UIImage(named: "skyScreenSaven"))
    let labelStarWars = ManagerConfigureViews.shared.configureLabel(title: "Stars Wars Info")
    let pushMainScreen = ManagerConfigureViews.shared.configureButton(title: "Start", colorBackground: .blue)
    //MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHerarcy()
        setupViews()
        setupLayuot()
    }    
    //MARK: - Setups
    private func setupHerarcy() {
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
        view.addSubview(labelStarWars)
        view.addSubview(pushMainScreen)
    }
    
    private func setupViews() {
        backroundImage.contentMode = .scaleAspectFill
    }
    
    private func setupLayuot() {
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

