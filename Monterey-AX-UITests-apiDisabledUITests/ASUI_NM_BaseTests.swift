import XCTest
@testable import Monterey_AX_UITests_apiDisabled


class ASUI_NM_BaseTests: XCTestCase {
    
    var app: XCUIApplication!
    var axEngine = AXEngine()
        
    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()        
    }

}
