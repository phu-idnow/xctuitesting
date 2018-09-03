//
//  UIAutomationTestUITests.swift
//  UIAutomationTestUITests
//
//  Created by phu nguyen on 8/31/18.
//  Copyright © 2018 nfa asia. All rights reserved.
//

import XCTest

class UIAutomationTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = true
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginScreenInfo() {
        let app = XCUIApplication()
        
        let loginScreen = app/*@START_MENU_TOKEN@*/.otherElements["view1"]/*[[".otherElements[\"View 1\"]",".otherElements[\"view1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(loginScreen.exists, "Login screen did show")
        
        let loginButton = app.buttons["loginButton"]
        XCTAssertTrue(loginButton.exists, "Should have login button")
    }
    
    
    func testLoginSuccessfull() {
        let app = XCUIApplication()
        
        let textField = app.textFields["emailTextField"]
        textField.tap()
        textField.typeText("peterng@yopmail.com")
        
        let passwordtextfieldSecureTextField = app/*@START_MENU_TOKEN@*/.secureTextFields["passwordTextField"]/*[[".otherElements[\"View 1\"]",".secureTextFields[\"Password\"]",".secureTextFields[\"passwordTextField\"]",".otherElements[\"view1\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        passwordtextfieldSecureTextField.tap()
        passwordtextfieldSecureTextField.typeText("123456")
        
        app/*@START_MENU_TOKEN@*/.buttons["loginButton"]/*[[".otherElements[\"View 1\"]",".buttons[\"Login Button\"]",".buttons[\"loginButton\"]",".otherElements[\"view1\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let view2 = app.otherElements["view2"]
        XCTAssertTrue(view2.exists, "View 2 should be shown")
    }
    
    func testFlow() {
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.textFields["emailTextField"]/*[[".otherElements[\"View 1\"]",".textFields[\"Email\"]",".textFields[\"emailTextField\"]",".otherElements[\"view1\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.secureTextFields["passwordTextField"]/*[[".otherElements[\"View 1\"]",".secureTextFields[\"Password\"]",".secureTextFields[\"passwordTextField\"]",".otherElements[\"view1\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["loginButton"]/*[[".otherElements[\"View 1\"]",".buttons[\"Login\"]",".buttons[\"loginButton\"]",".otherElements[\"view1\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["UIAutomationTest.View"].buttons["Back"].tap()
        
    }
    
}
