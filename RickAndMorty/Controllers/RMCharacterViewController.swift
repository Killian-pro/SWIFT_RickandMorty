//
//  RMCharacterViewController.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 08/09/2023.
//


//EXEMPLE REQUEST
// let request = RMRequest(endpoint: .character, pathComponents: ["1"])
//        let request = RMRequest(endpoint: .character, queryParameters: [URLQueryItem(name: "name", value: "rick"),URLQueryItem(name: "status", value: "alive")] )


import UIKit

final class RMCharacterViewController: UIViewController {
    
    private let characterListView = CharacterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title =  "Characters"
        setUpView()
    }
    
    private func setUpView()
    {
        view.addSubview(characterListView)
        NSLayoutConstraint.activate(
            [characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
             characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
             characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
             characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }


}
