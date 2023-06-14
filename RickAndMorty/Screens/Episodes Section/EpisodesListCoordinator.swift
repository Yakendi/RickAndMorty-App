//
//  EpisodesListCoordinator.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

final class EpisodesListCoordinator: Coordinator {
    
    // MARK: - Public
    var navigationController: UINavigationController
    
    // MARK: - Constructor
    init() {
        self.navigationController = UINavigationController()
        
        start()
    }
    
    func start() {
        let controller = EpisodesListViewFactory.create()
        navigationController.setViewControllers([controller], animated: true)
    }
}
