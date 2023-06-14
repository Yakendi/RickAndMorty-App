//
//  AppCoordinator.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    // MARK: - Public
    var navigationController = UINavigationController()
    let window: UIWindow
    
    // MARK: - Constructor
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let controller = TabBarController()
        
        window.rootViewController = controller
        window.makeKeyAndVisible()
    }
}
