//
//  PersonsListViewController.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = persons[tableView?.indexPathForSelectedRow?.row ?? 0]
    }

}

// MARK: - Table view data source
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personRow", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].fullName

        return cell
    }
}
