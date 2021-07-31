import Foundation
import XCTest

class MercariUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
   
    
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
      
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
        // End the Applitools test
        
    }
}
