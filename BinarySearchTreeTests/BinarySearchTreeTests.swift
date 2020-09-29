//
//  BinarySearchTreeTests.swift
//  BinarySearchTreeTests
//
//  Created by Frank McAuley on 9/29/20.
//

import XCTest
@testable import BinarySearchTree

class BinarySearchTreeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatBSTIsNotNil() throws {
        let bst = BinarySearchTree()
        XCTAssertNotNil(bst)
    }

}
