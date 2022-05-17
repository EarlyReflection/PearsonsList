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
        let names = Array(Set(dataManager.names))
        let surnames = Array(Set(dataManager.surnames))
        let phoneNumbers = Array(Set(dataManager.phoneNumbers))
        let emails = Array(Set(dataManager.emails))
        
        for i in 0..<dataManager.names.count {
            let person = Person(
                name: names[i],
                surname: surnames[i],
                phone: phoneNumbers[i],
                email: emails[i]
            )
            persons.append(person)
        }
        return persons
    }
}
