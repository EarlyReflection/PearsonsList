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
        let dataManager = DataManager()
        
        let names = Array(dataManager.names)
        let surnames = Array(dataManager.surnames)
        let phoneNumbers = Array(dataManager.phoneNumbers)
        let emails = Array(dataManager.emails)
        
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
