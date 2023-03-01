//
//  ViewControllerUITests.swift
//  TestDemoIosUITests
//
//  Created by MacBook Pro on 1/03/23.
//

import Foundation

import XCTest
@testable import TestDemoIos

final class ViewControllerUITests: XCTestCase {

    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }
    
    func testLogin_ValidateTextFields_AreEmpty(){
        let app = XCUIApplication()
               app.launch()
               let editFiel = app.textFields["email"]
               editFiel.tap()
               editFiel.typeText("Gabbi")
        
               let passFiel = app.textFields["contraseña"]
                passFiel.tap()
                passFiel.typeText("Pass")
         

               let valueEmail:String  = editFiel.value  as! String
               let valuePass:String  = passFiel.value  as! String
        
                XCTAssertEqual(valueEmail,"Gabbi")
                XCTAssertEqual(valuePass,"Pass")
    
       }



}
