//
//  TabBarController.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

enum TabBarItems {
    case characters
    case locations
    
    var title: String {
        switch self {
        case .characters:
            return "Персонажи"
        case .locations:
            return "Локации"
        }
    }
    
    var image: UIImage {
        switch self {
        case .characters:
            return UIImage(systemName: "person.fill") ?? UIImage()
        case .locations:
            return UIImage(systemName: "globe.americas.fill") ?? UIImage()
        }
    }
}

final class TabBarController: UITabBarController {

    // MARK: - Private
    private let charactersList = CharactersListCoordinator()
    private let locationsList = LocationsListCoordinator()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabs()
        tabBar.tintColor = .systemBlue
    }
}

// MARK: - Setup tabs
private extension TabBarController {
    func setupTabs() {
        charactersList.navigationController.tabBarItem = UITabBarItem(
            title: TabBarItems.characters.title,
            image: TabBarItems.characters.image,
            tag: 1
        )
        locationsList.navigationController.tabBarItem = UITabBarItem(
            title: TabBarItems.locations.title,
            image: TabBarItems.locations.image,
            tag: 2
        )
        
        setViewControllers([charactersList.navigationController, locationsList.navigationController], animated: true)
    }
}
