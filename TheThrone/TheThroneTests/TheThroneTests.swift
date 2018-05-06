//
//  TheThroneTests.swift
//  TheThroneTests
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import XCTest
@testable import TheThrone

class TheThroneTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testConnectivity() {
        // Network is connected or not
        let reachability = Reachability()!
        XCTAssertTrue(reachability.isReachable, "Connected to Internet")
//        XCTAssert(reachability.isReachable)
    }
    
    
}
