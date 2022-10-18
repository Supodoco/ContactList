//
//  DataManager.swift
//  ContactList
//
//  Created by Supodoco on 18.10.2022.
//

import Foundation


class DataManager {
    static let shared = DataManager()
    
    private let names = [
        "Liam",
        "Olivia",
        "Noah",
        "Emma",
        "Oliver",
        "Charlotte",
        "Elijah",
        "Amelia",
        "James",
        "Ava"
    ].shuffled()
    
    private let surnames = [
        "Thompson",
        "Evans",
        "Walker",
        "White",
        "Roberts",
        "Green",
        "Hall",
        "Wood",
        "Jackson",
        "Clark"
    ].shuffled()
    
    private let phoneNumbers = (0...9).map {
        String(Int.random(in: 8_900_000_00_00...8_990_000_00_00 + $0))
    }.shuffled()
        
    private let emails = (0...9).map {
        String(
            repeating: ["a","q","z","c","v","d","r","t","o","p"][$0],
            count: $0 / 2 + 5
        ) + "@gmail.com"
    }.shuffled()
    
    private init() {}
    
    func getPersons() -> [Person] {
        (0...names.count - 1).map {
            Person(
                name: names[$0],
                surname: surnames[$0],
                phoneNumber: phoneNumbers[$0],
                email: emails[$0]
            )
        }
    }
}
