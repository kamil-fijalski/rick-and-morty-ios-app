//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Kamil Fijalski on 28/01/2023.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total entries: " + String(model.info.count))
                print("Total pages: " + String(model.info.pages))
                print("Entries per page: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
