//
//  ContactsWithDetailViewController.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

import UIKit

class ContactsWithDetailViewController: UITableViewController {

    let persons = DataManager.shared.getPersons()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactDetail", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = persons[indexPath.section].phoneNumber
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = persons[indexPath.section].email
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
