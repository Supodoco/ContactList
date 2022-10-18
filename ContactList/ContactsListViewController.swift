//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    let persons = DataManager.shared.getPersons()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? ContactDetailViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC?.person = persons[indexPath.row]        
    }
}
