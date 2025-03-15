//
//  MainViewConroller.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 11.02.2025.
//

import UIKit

final class MainViewConroller: UIViewController {
   
    //MARK: VARs
    lazy var choiceTable = ManagerConfigureViews.shared.configureTable()
    let backroundImage = UIImageView(image: UIImage(named: "Shturm"))
    //MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHerarcy()
        setupLayuot()
        setupViews()
        NetworkManager.shared.getSWInfo()
        setupTableChoce()
    }
    //MARK: - Setups
    private func setupHerarcy() {
        view.addSubview(backroundImage)
        view.addSubview(choiceTable)
        
    }
    
    private func setupViews() {
        title = "Choice"
        choiceTable.reloadData()
    }
    
    private func setupLayuot() {
        backroundImage.contentMode = .scaleAspectFill
        NSLayoutConstraint.activate([
            choiceTable.topAnchor.constraint(equalTo: view.topAnchor),
            choiceTable.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            choiceTable.leftAnchor.constraint(equalTo: view.leftAnchor),
            choiceTable.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
    
    private func setupTableChoce() {
        choiceTable.delegate = self
        choiceTable.dataSource = self
        choiceTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        choiceTable.backgroundColor = .clear
    }
    
}

extension MainViewConroller: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataSWListURL.shares.arrayURLs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = choiceTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "ataSWListURL.shares.arrayURLs.first!"
        cell.backgroundColor = .clear
        return cell
    }
}

