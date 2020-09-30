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
    
    func testThatInsertCanPlaceAValueOnTheRight(){
        let bst = BinarySearchTree<Int>()
        let value1 = 50
        let value2 = 75
        bst.insert(value: value1)
        bst.insert(value: value2)
        var output =  0
        if let rootRightValue = bst.root.right?.value{
            output = rootRightValue
        }
        
        XCTAssertEqual(75, output)
    }
    
    
    func testThatInsertCanPlaceThreeValuesOnTheLeft() {
        let bst = BinarySearchTree<Int>()
        let value1 = 50
        let value2 = 25
        let value3 = 12
        bst.insert(value:value1)
        bst.insert(value: value2)
        bst.insert(value: value3)
        var output = 0
        if let rootLeftVale = bst.root.left?.left?.value{
            output = rootLeftVale
        }

        XCTAssertEqual(12, output)
    }
    
    
    func testThatInsertCanPlaceFourValuesOnTheLeft() {
        let bst = BinarySearchTree<Int>()
        let value1 = 50
        let value2 = 25
        let value3 = 12
        let value4 = 37
        bst.insert(value:value1)
        bst.insert(value: value2)
        bst.insert(value: value3)
        bst.insert(value: value4)
        var output = 0
        if let rootRightVale = bst.root.left?.right?.value{
            output = rootRightVale
        }

        XCTAssertEqual(37, output)
    }
    
    func testThatInsertCanPlaceAValueOnTheRightNested(){
        let bst = BinarySearchTree<Int>()
        let value1 = 50
        let value2 = 75
        let value3 = 62
        let value4 = 87
        bst.insert(value: value1)
        bst.insert(value: value2)
        bst.insert(value: value3)
        bst.insert(value: value4)
        var output =  0
        if let rootRightValue = bst.root.right?.right?.value{
            output = rootRightValue
        }
        
        XCTAssertEqual(87, output)
        
        output = 0
        if let rootRightLeftValue = bst.root.right?.left?.value{
            output = rootRightLeftValue
        }
        
        XCTAssertEqual(62, output)
    }
    
    func testThatBFSWorks() {
        let bst = BinarySearchTree<Int>()
       
        bst.insert(value: 50)
        bst.insert(value: 25)
        bst.insert(value: 75)
        bst.insert(value: 12)
        bst.insert(value: 63)
        bst.insert(value: 37)
        bst.insert(value: 87)
        bst.root.breathFirstSearch(bst.root)
    }
    
    func testThatICanMakeTheCodeChallengeWork() {
        let bst = BinarySearchTree<Int>()
        
        bst.insert(value: 8)
        bst.insert(value: 5)
        bst.insert(value: 10)
        bst.insert(value: 2)
        bst.insert(value: 7)
        bst.insert(value: 9)
        bst.insert(value: 12)
        
        let output = bst.root.findAddends(sum: 17, fromNode: bst.root)
        print(output)
    }
    
    func testThatASimpleAddendCanBeFound() {
        let bst = BinarySearchTree<Int>()
        
        bst.insert(value: 8)
        bst.insert(value: 5)
        bst.insert(value: 10)
        
        let output = bst.root.findAddends(sum: 15, fromNode: bst.root)
        print(output)
       
    }
    
}
