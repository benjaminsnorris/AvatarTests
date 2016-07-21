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
        
        let avatar = application.otherElements["avatar"]
        let name = application.staticTexts["nameLabel"]
        XCTAssertTrue(avatar.exists)
        XCTAssertTrue(name.exists)

        let settings = application.navigationBars.buttons["Settings"]
        XCTAssertTrue(settings.exists)
        settings.tap()
    }
    
}
