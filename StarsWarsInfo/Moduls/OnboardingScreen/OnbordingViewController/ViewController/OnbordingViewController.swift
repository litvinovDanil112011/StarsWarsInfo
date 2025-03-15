//
//  OnbordingViewController.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 11.02.2025.
//

import UIKit

final class OnbordingViewController: UIViewController {
    let networkManager = NetworkManager()
    //MARK: Var
    let backroundImage = UIImageView(image: UIImage(named: "skyScreenSaven"))
    let labelStarWars = ManagerConfigureViews.shared.configureLabel(title: "STARS WARS Info")
    let pushMainScreen = ManagerConfigureViews.shared.configureButton(title: "Start", colorBackground: .black)
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
        pushMainScreen.addTarget(self, action: #selector(jumpToMainScreen), for: .touchUpInside)
    }
    private func setupViews() {
        backroundImage.contentMode = .scaleAspectFill
    }
    
    @objc func jumpToMainScreen() {
        navigationController?.pushViewController(MainViewConroller(), animated: true)
    }

}

