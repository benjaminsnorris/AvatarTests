//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import XCTest

class TestedAvatarUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    /// test that it updates properly
    func testThatItUpdatesProperly() {
        let application = XCUIApplication()
        sleep(1)
        
        let avatar = application.otherElements["avatar"]
        let name = application.staticTexts["nameLabel"]
        XCTAssertTrue(avatar.exists)
        XCTAssertTrue(name.exists)

        let settings = application.navigationBars.buttons["Settings"]
        XCTAssertTrue(settings.exists)
        settings.tap()
        
        let lastName = application.textFields["lastName"]
        lastName.tap()
        lastName.typeText("Lancelot")
        let close = application.navigationBars.buttons["Close"]
        close.tap()
        
        XCTAssertEqual(name.label, "Lancelot")
        XCTAssertEqual(avatar.label, "Avatar for Lancelot")
        
        settings.tap()
        XCTAssertEqual(lastName.value as? String, "Lancelot")
        let firstName = application.textFields["firstName"]
        firstName.tap()
        firstName.typeText("Sir\n")
        close.tap()
        XCTAssertEqual(name.label, "Sir Lancelot")
        XCTAssertEqual(avatar.label, "Avatar for Sir Lancelot")
    }
    
}
