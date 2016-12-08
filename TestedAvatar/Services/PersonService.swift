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
    fileprivate(set) var currentPerson: Person?
    
    
    // MARK: - Internal functions
    
    func saveFirstName(_ firstName: String?) {
        createCurrentIfNeeded()
        currentPerson?.firstName = firstName
    }
    
    func saveLastName(_ lastName: String?) {
        createCurrentIfNeeded()
        currentPerson?.lastName = lastName
    }
    
}


// MARK: - Private functions

private extension PersonService {
    
    func createCurrentIfNeeded() {
        guard currentPerson == nil else { return }
        currentPerson = Person()
    }
    
}
