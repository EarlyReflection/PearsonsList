//
//  Person.swift
//  PearsonsList
//
//  Created by Vladimir Dvornikov on 16.05.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
