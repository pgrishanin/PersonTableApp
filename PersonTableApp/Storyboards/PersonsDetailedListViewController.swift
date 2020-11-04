//
//  PersonsDetailedListViewController.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

import UIKit

class PersonsDetailedListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsSelection = false
    }
}

// MARK: - Table view data source
extension PersonsDetailedListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        
        if indexPath.row.isMultiple(of: 2) {
            cell = tableView.dequeueReusableCell(withIdentifier: "phoneRow", for: indexPath)
            cell.textLabel?.text = persons[indexPath.section].phone
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "emailRow", for: indexPath)
            cell.textLabel?.text = persons[indexPath.section].email
        }

        return cell
    }
    
    
}

// MARK: - Table view delegate
extension PersonsDetailedListViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .systemGray5
        
        let headerLabel = UILabel(frame: CGRect(x: 24, y: 4, width: 0, height: 0))
        headerLabel.text = persons[section].fullName
        headerLabel.font = UIFont.boldSystemFont(ofSize: 16)
        headerLabel.sizeToFit()
        headerView.addSubview(headerLabel)
        
        return headerView
    }
}
