//
//  LocationsListCoordinator.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

final class LocationsListCoordinator: Coordinator {
    
    // MARK: - Private
    var navigationController: UINavigationController
    
    // MARK: - Constructor
    init() {
        self.navigationController = UINavigationController()
        
        start()
    }
    
    func start() {
        let controller = LocationsListViewFactory.create()
        navigationController.setViewControllers([controller], animated: true)
    }
}
