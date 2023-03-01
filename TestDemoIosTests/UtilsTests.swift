//
//  UtilsTests.swift
//  TestDemoIosTests
//
//  Created by MacBook Pro on 1/03/23.
//

import Foundation


import XCTest
@testable import TestDemoIos

final class UtilsTests: XCTestCase {



    func testEmailSuccess(){
        var result = Utils.validEmail("gabbi0812@gmail.com")
        XCTAssertEqual(result,true)
    }
    
    func testEmailFailed(){
        var result = Utils.validEmail("gabbi0812gmail.com")
        XCTAssertEqual(result,false)
    }

    
    func testPasswordSuccess(){
        var result = Utils.validPassword("12werdfr")
        XCTAssertEqual(result,true)
    }

    
    func testPasswordFailed(){
        var result = Utils.validEmail("gabbi")
        XCTAssertEqual(result,false)
    }


}
