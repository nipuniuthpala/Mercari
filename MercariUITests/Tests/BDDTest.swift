import Foundation
import XCTest

class BDDTest: MercariUITestBase {
    
 func testAddNewShippingAddress() {
        givenAppIsReady()
        whenIClickMyPersonalInfo()
        whenIClickShipppingAddress()
        whenIClickAddBtn()
        whenIEnterAddress(address:"japan")
        whenIClickSave()
        thenIShouldSeeAddressIsRegisterd()
    }
func testSearch() {
        givenAppIsReady()
        whenIEnterItemName(item:"MacBook")
        whenITap3rdItem()
        thenIShouldSeeMacBookProAsTheTitle()
          
       }
}
