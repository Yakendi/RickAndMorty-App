//
//  Coordinator.swift
//  RickAndMorty
//
//  Created by Аслан Микалаев on 14.06.2023.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    
    func start()
}
