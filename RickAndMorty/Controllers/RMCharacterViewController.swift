//
//  RMCharacterViewController.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 08/09/2023.
//


import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title =  "Characters"
        
       // let request = RMRequest(endpoint: .character, pathComponents: ["1"])
        let request = RMRequest(endpoint: .character, queryParameters: [URLQueryItem(name: "name", value: "rick"),URLQueryItem(name: "status", value: "alive")] )
        
        //print(request.url)
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
                print("Total")
            case .failure(let error):
                print(String(describing: error))
            }
        }

        // Do any additional setup after loading the view.
    }
    



}
