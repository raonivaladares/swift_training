//
//  FoodTrackTests.swift
//  FoodTrackTests
//
//  Created by Raoni Valadares on 12/24/15.
//  Copyright © 2015 None. All rights reserved.
//

import XCTest
@testable import FoodTrack

class FoodTrackTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    func testMealInitialization() {
        
        // Success case.
        let potentialItem = Meal(name: "New Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive!")
    }
    
}
