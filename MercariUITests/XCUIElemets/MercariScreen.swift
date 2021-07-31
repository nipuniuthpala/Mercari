import Foundation
import XCTest

enum MercariScreen: String {
    
    case MyPage = "identifier0"
    case PersonalInfo = "identifier1"
    case shipping = "identifier2"
    case btnAdd = "identifier3"
    case saveButton = "identifier4"
    case address = "identifier5"
    case RegisterMessage = "identifier6"
    case search="identifier7"
    case item="identifier8"
    case title="identifier9"
    
    var element: XCUIElement {
        
        switch self {
        case .MyPage, .PersonalInfo, .shipping,.RegisterMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .address,.search:
            return XCUIApplication().textFields[self.rawValue]
        case .btnAdd,.saveButton:
            return XCUIApplication().buttons[self.rawValue]
        case .item:
            return XCUIApplication().staticTexts.element(boundBy: 2)//3rd element
        case .title:
            let predicate = NSPredicate(format: "MacBook: .+")
            return XCUIApplication().staticTexts.element(matching: predicate)
        }
    }
    
    
}
