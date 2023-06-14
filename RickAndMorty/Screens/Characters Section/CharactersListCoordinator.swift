//
//  CharactersListCoordinator.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

final class CharactersListCoordinator: Coordinator {
    
    // MARK: - Public
    var navigationController: UINavigationController
    
    // MARK: - Constructor
    init() {
        self.navigationController = UINavigationController()
        
        start()
    }
    
    func start() {
        let controller = CharactersListViewFactory.create()
        navigationController.setViewControllers([controller], animated: true)
    }
}
