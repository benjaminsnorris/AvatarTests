//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import XCTest
@testable import TestedAvatar

class PersonServiceSpec: XCTestCase {
    
    var service: PersonService!
    
    override func setUp() {
        super.setUp()
        service = PersonService()
    }
    
    /// test that current person is nil when initialized
    func testThatCurrentPersonIsNilWhenInitialized() {
        XCTAssertNil(PersonService.currentPerson)
    }
    
    /// test that current person is not nil after first name is saved
    func testThatCurrentPersonIsNotNilAfterFirstNameIsSaved() {
        XCTAssertNil(PersonService.currentPerson)
        service.saveFirstName("Sir")
        XCTAssertNotNil(PersonService.currentPerson)
    }
    
    /// test that current person is not nil after last name is saved
    func testThatCurrentPersonIsNotNilAfterLastNameIsSaved() {
        XCTAssertNil(PersonService.currentPerson)
        service.saveLastName("Lancelot")
        XCTAssertNotNil(PersonService.currentPerson)
    }

}
