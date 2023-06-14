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
    case episodes
    
    var title: String {
        switch self {
        case .characters:
            return "Персонажи"
        case .locations:
            return "Локации"
        case .episodes:
            return "Эпизоды"
        }
    }
    
    var image: UIImage {
        switch self {
        case .characters:
            return UIImage(systemName: "person.fill") ?? UIImage()
        case .locations:
            return UIImage(systemName: "globe.americas.fill") ?? UIImage()
        case .episodes:
            return UIImage(systemName: "tv") ?? UIImage()
        }
    }
}

final class TabBarController: UITabBarController {

    // MARK: - Private
    private let charactersList = CharactersListCoordinator()
    private let locationsList = LocationsListCoordinator()
    private let episodesList = EpisodesListCoordinator()
    
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
        
        episodesList.navigationController.tabBarItem = UITabBarItem(
            title: TabBarItems.episodes.title,
            image: TabBarItems.episodes.image,
            tag: 3
        )
        
        setViewControllers([
            charactersList.navigationController,
            locationsList.navigationController,
            episodesList.navigationController
        ], animated: true)
    }
}
