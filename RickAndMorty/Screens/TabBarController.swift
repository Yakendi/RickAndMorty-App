//
//  TabBarController.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

enum TabBarItems {
    case characters
    
    var title: String {
        switch self {
        case .characters:
            return "Персонажи"
        }
    }
    
    var image: UIImage {
        switch self {
        case .characters:
            return UIImage(systemName: "person.fill") ?? UIImage()
        }
    }
}

final class TabBarController: UITabBarController {

    // MARK: - Private
    private let charactersList = CharactersListCoordinator()
    
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
        
        setViewControllers([charactersList.navigationController], animated: true)
    }
}
