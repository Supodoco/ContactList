//
//  Models.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}

