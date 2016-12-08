//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import XCTest
@testable import TestedAvatar

class PersonSpec: XCTestCase {
    
    /// test that it initializes correctly with no parameters
    func testThatItInitializesCorrectlyWithNoParameters() {
        let person = Person()
        XCTAssertEqualWithAccuracy(person.id, Date().timeIntervalSince1970, accuracy: 1.0)
        XCTAssertNil(person.firstName)
        XCTAssertNil(person.lastName)
    }
    
    /// test that it initializes correctly with only first name
    func testThatItInitializesCorrectlyWithOnlyFirstName() {
        let person = Person(firstName: "Sir")
        XCTAssertEqualWithAccuracy(person.id, Date().timeIntervalSince1970, accuracy: 1.0)
        XCTAssertEqual(person.firstName, "Sir")
        XCTAssertNil(person.lastName)
    }
    
    /// test that it initializes correctly with only last name
    func testThatItInitializesCorrectlyWithOnlyLastName() {
        let person = Person(lastName: "Lancelot")
        XCTAssertEqualWithAccuracy(person.id, Date().timeIntervalSince1970, accuracy: 1.0)
        XCTAssertNil(person.firstName)
        XCTAssertEqual(person.lastName, "Lancelot")
    }
    
    /// test that it initializes correctly with first and last name
    func testThatItInitializesCorrectlyWithFirstAndLastName() {
        let person = Person(firstName: "Sir", lastName: "Lancelot")
        XCTAssertEqualWithAccuracy(person.id, Date().timeIntervalSince1970, accuracy: 1.0)
        XCTAssertEqual(person.firstName, "Sir")
        XCTAssertEqual(person.lastName, "Lancelot")
    }
    
    /// test that it conforms to name presentable correctly
    func testThatItConformsToNamePresentableCorrectly() {
        let person = Person(firstName: "Sir", lastName: "Lancelot")
        XCTAssertEqual(person.givenName, "Sir")
        XCTAssertEqual(person.familyName, "Lancelot")
    }
    
    /// test that it conforms to avatar presentable correctly
    func testThatItConformsToAvatarPresentableCorrectly() {
        let person = Person(firstName: "Sir", lastName: "Lancelot")
        XCTAssertEqual(person.initialsString, "SL")
        XCTAssertNil(person.image)
    }
    
}
