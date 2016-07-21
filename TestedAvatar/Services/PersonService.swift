//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import Foundation

class PersonService {
    
    // MARK: - Internal properties
    
    static var sharedInstance = PersonService()
    private(set) var currentPerson: Person?
    
    
    // MARK: - Internal functions
    
    func saveFirstName(firstName: String?) {
        createCurrentIfNeeded()
        currentPerson?.firstName = firstName
    }
    
    func saveLastName(lastName: String?) {
        createCurrentIfNeeded()
        currentPerson?.lastName = lastName
    }
    
}


// MARK: - Private functions

private extension PersonService {
    
    private func createCurrentIfNeeded() {
        guard currentPerson == nil else { return }
        currentPerson = Person()
    }
    
}
