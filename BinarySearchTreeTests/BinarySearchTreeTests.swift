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
        let bst = BinarySearchTree<Int>()
        XCTAssertNotNil(bst)
    }
    
    func testThatBSTCanInsertASingleValue() {
        let bst = BinarySearchTree<Int>()
        let value = 44
        bst.insert(value:value)
    }
    
    func testThatInsertCanPlaceTwoValuesOnTheLeft() {
        let bst = BinarySearchTree<Int>()
        let value1 = 50
        let value2 = 25
        bst.insert(value:value1)
        bst.insert(value: value2)
        var output = 0
        if let rootLeftVale = bst.root.left?.value{
            output = rootLeftVale
        }

        XCTAssertEqual(25, output)
    }
}
