//
//  PersonDetailsViewController.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }

}
