//
//  DataManager.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

class DataManager {
    var names = [
        "John",
        "James",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles"
    ]
    
    var surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Jones",
        "Brown",
        "Davis",
        "Miller",
        "Wilson",
        "Moore",
        "Taylor"
    ]
    
    var emails = [
        "aaa@aaa.aa",
        "bbb@bbb.bb",
        "ccc@ccc.cc",
        "ddd@ddd.dd",
        "eee@eee.ee",
        "fff@fff.ff",
        "ggg@ggg.gg",
        "hhh@hhh.hh",
        "iii@iii.ii",
        "jjj@jjj.jj"
    ]
    
    var phones = [
        "234567345",
        "857463028",
        "748593612",
        "155235255",
        "976545745",
        "363634666",
        "346687543",
        "975464464",
        "343433535",
        "575754252"
    ]
    
    var dataIsAvailable: Bool {
        !names.isEmpty && !surnames.isEmpty && !emails.isEmpty && !phones.isEmpty
    }
    
    func generateUniquePerson() -> Person {
        let randomName = names.randomElement()
        let randomSurname = surnames.randomElement()
        let randomEmail = emails.randomElement()
        let randomPhone = phones.randomElement()
        
        names = names.filter { $0 != randomName }
        surnames = surnames.filter { $0 != randomSurname }
        emails = emails.filter { $0 != randomEmail }
        phones = phones.filter { $0 != randomPhone }
        
        return Person(
            name: randomName ?? "",
            surname: randomSurname ?? "",
            phone: randomPhone ?? "",
            email: randomEmail ?? ""
        )
    }
    
    func generateUniquePersons() -> [Person] {
        var persons: [Person] = []
        
        while dataIsAvailable {
            persons.append(generateUniquePerson())
        }
        
        return persons
    }
}
