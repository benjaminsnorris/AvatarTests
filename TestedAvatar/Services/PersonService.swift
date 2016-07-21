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
    
    static private(set) var currentPerson: Person?
    
    
    // MARK: - Internal functions
    
    func saveFirstName(firstName: String?) {
        createCurrentIfNeeded()
        PersonService.currentPerson?.firstName = firstName
    }
    
    func saveLastName(lastName: String?) {
        createCurrentIfNeeded()
        PersonService.currentPerson?.lastName = lastName
    }
    
}


// MARK: - Private functions

private extension PersonService {
    
    private func createCurrentIfNeeded() {
        guard PersonService.currentPerson == nil else { return }
        PersonService.currentPerson = Person()
    }
    
}
