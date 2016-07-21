//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import Foundation

struct PersonService {
    
    // MARK: - Internal properties
    
    static let sharedInstance = PersonService()
    private(set) var currentPerson: Person?
    
    
    // MARK: - Internal functions
    
    mutating func saveFirstName(firstName: String?) {
        createCurrentIfNeeded()
        currentPerson?.firstName = firstName
    }
    
    mutating func saveLastName(lastName: String?) {
        createCurrentIfNeeded()
        currentPerson?.lastName = lastName
    }
    
}


// MARK: - Private functions

private extension PersonService {
    
    private mutating func createCurrentIfNeeded() {
        guard currentPerson == nil else { return }
        currentPerson = Person()
    }
    
}
