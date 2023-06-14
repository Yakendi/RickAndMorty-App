//
//  CharactersListViewFactory.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import Foundation

struct CharactersListViewFactory {
    static func create() -> CharactersListViewController {
        let controller = CharactersListViewController()
        return controller
    }
}
