//
//  Medical_DiagnosisTests.swift
//  Medical DiagnosisTests
//
//  Created by Raul Juarez on 29/8/16.
//  Copyright © 2016 Raul Juarez. All rights reserved.
//

import XCTest
@testable import Medical_Diagnosis

class Medical_DiagnosisTests: XCTestCase {
    
    var vc: ResultsViewController! 
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        vc = storyboard.instantiateViewControllerWithIdentifier("ResultsVC") as! ResultsViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testData() {
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
