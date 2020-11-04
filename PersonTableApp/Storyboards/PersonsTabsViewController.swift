//
//  PersonsTabsViewController.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

import UIKit

class PersonsTabsViewController: UITabBarController {
    
    var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let personsListVC = viewControllers?.first as? PersonsListViewController {
            personsListVC.persons = persons
        }
        
        if let personsDetailedListVC = viewControllers?.last as? PersonsDetailedListViewController {
            personsDetailedListVC.persons = persons
        }
    }
}
