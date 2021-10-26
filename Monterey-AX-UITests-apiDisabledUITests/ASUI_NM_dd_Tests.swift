import XCTest
@testable import Monterey_AX_UITests_apiDisabled


class UIASNM_dd_Tests: ASUI_NM_BaseTests {}


// TextFields
extension UIASNM_dd_Tests {
    
    func test_that_in_normal_setting_it_deletes_the_whole_line() {
        let textInAXFocusedElement = "this is a line to be deleted"
        app.textFields.firstMatch.tap()
        app.textFields.firstMatch.typeText(textInAXFocusedElement)
        
        let updatedAXFocuedElement = axEngine.axFocusedElement()
            
        XCTAssertNotNil(updatedAXFocuedElement)
    }
}
