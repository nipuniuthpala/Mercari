import Foundation
import XCTest

extension MercariUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(MercariScreen.MyPage.element.exists)
        }
        
    }
    func whenIClickMyPersonalInfo() {
        XCTContext.runActivity(named: "When I Click MyPersonalInfo ") { _ in
            MercariScreen.PersonalInfo.element.tap()
        }
        
    }
    func whenIClickShipppingAddress() {
        XCTContext.runActivity(named: "When I Click ShippingAddress ") { _ in
            MercariScreen.shipping.element.tap()
        }
        
    }
    
    func whenIClickAddBtn() {
        XCTContext.runActivity(named: "When I Click Add Button") { _ in
            MercariScreen.btnAdd.element.tap()
        }
        
    }
    
    
    func whenIEnterAddress(address: String) {
        XCTContext.runActivity(named: "When I enter address \(address) ") { _ in
            MercariScreen.address.element.tap()
            MercariScreen.address.element.typeText(address)
        }
    }
    
    func whenIClickSave() {
        XCTContext.runActivity(named: "When I Click save ") { _ in
            MercariScreen.saveButton.element.tap()
        }
        
    }
    
    func thenIShouldSeeAddressIsRegisterd() {
        XCTContext.runActivity(named: "Then I Should See Registerd message ") { _ in
            XCTAssertTrue(MercariScreen.RegisterMessage.element.exists)
        }
    }
    
    func whenIEnterItemName(item: String) {
        XCTContext.runActivity(named: "When I enter item name\(item) ") { _ in
            MercariScreen.search.element.tap()
            MercariScreen.search.element.typeText(item)
        }
    }
    func whenITap3rdItem() {
        XCTContext.runActivity(named: "When I Tap 3rd Item") { _ in
            MercariScreen.item.element.tap()
        }
    }
    
    func thenIShouldSeeMacBookProAsTheTitle() {
        XCTContext.runActivity(named: "Then I see MacBook in the Title") { _ in
            XCTAssertTrue( MercariScreen.title.element.exists)
        }
    }
}

