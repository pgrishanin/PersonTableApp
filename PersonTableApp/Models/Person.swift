//
//  Person.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let dataManager = DataManager()
        return dataManager.generateUniquePersons()
    }
}
