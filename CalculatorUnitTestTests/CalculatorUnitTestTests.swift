//
//  CalculatorUnitTestTests.swift
//  CalculatorUnitTestTests
//
//  Created by Ragaie alfy on 4/3/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import XCTest

class CalculatorUnitTestTests: XCTestCase {
    
    
    var tempCalculController : CalController!
    override func setUp() {
        super.setUp()
        
        tempCalculController = CalController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDiv() {
        
        XCTAssertEqual(tempCalculController.div(first: 10.0, secand: 5.0), 2.0)
        XCTAssertEqual(tempCalculController.div(first: 10.0, secand: 0.0), 0.0)

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testMinus() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssertEqual(tempCalculController.minus(first: 10.0, secand: 5.0), 5.0)
        XCTAssertEqual(tempCalculController.minus(first: 10.0, secand: 5.0), 3.0)

    }
    
    func testmul() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(tempCalculController.mul(first: 10.0, secand: 5.0), 50.0)
        XCTAssertEqual(tempCalculController.minus(first: 10.0, secand: 5.0), 3.0)

    }
    
    func testplus() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(tempCalculController.plus(first: 10.0, secand: 5.0), 15.0)
        XCTAssertEqual(tempCalculController.minus(first: 10.0, secand: 5.0), 3.0)

    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
          tempCalculController.plus(first: 14563456353457456456456453457455675670.0, secand: 56.0)

            // Put the code you want to measure the time of here.
        }
    }
    
}
