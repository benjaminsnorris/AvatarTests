//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import UIKit

struct Person {
    
    // MARK: - Internal properties
    
    var id: Double
    var firstName: String?
    var lastName: String?
    
    
    // MARK: - Initializers
    
    init(firstName: String? = nil, lastName: String? = nil) {
        self.id = NSDate().timeIntervalSince1970
        self.firstName = firstName
        self.lastName = lastName
    }
    
}


// MARK: - Name presentable

extension Person: NamePresentable {
    
    var givenName: String? {
        return firstName
    }
    
    var familyName: String? {
        return lastName
    }
    
}


// MARK: - Avatar presentable

extension Person: AvatarPresentable {
    
    var initialsString: String? {
        return initials
    }
    
    var image: UIImage? {
        return nil
    }
    
}
