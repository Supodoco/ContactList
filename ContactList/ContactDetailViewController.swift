//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: " + person.phoneNumber
        emailLabel.text = "Email: " + person.email
    }
}
