//
//  MainCoordinator.swift
//  NewsApp
//
//  Created by Ernest DeFoy on 5/27/20.
//  Copyright © 2020 Ernest DeFoy. All rights reserved.
//

import UIKit

class MainCoordinator {
    
    private weak var presenter: UINavigationController?
			
	init(_ presenter: UINavigationController?) {
        self.presenter = presenter
	}
	
	func start() {
        let topHeadlinesCategoriesViewController = TopHeadlinesCategoriesViewController.instantiate("TopHeadlinesCategories")
        
        presenter?.pushViewController(topHeadlinesCategoriesViewController, animated: false)
	}
}
