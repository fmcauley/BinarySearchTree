//
//  QueueTests.swift
//  BinarySearchTreeTests
//
//  Created by Frank McAuley on 9/30/20.
//

import XCTest

class QueueTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatTheQueueIsNotNil() throws {
        let queue = Queue<Int>()
        XCTAssertNotNil(queue)
    }
    
    func testThatAQueueHasATopNode(){
        let queue = Queue<Int>()
        let head = queue.head
        XCTAssertNotNil(head)
    }
    
    func testThatAQueueCanEnQueueAValue() {
        let queue = Queue<Int>()
        let value = 42
        queue.enQueue(aValue:value)
    }
    
    func testeThatAQueneCanEnQueueTwoValues() {
        let queue = Queue<Int>()
        let value1 = 42
        let value2 = 44
        
        queue.enQueue(aValue: value1)
        queue.enQueue(aValue: value2)
        
        var output = 0
        
        if let nextValue = queue.head.next?.value{
            output = nextValue
        }
        
        XCTAssertEqual(output, 44)
    }
    
    func testeThatAQueneCanEnQueueThreeValues() {
        let queue = Queue<Int>()
        let value1 = 42
        let value2 = 44
        let value3 = 31
        
        queue.enQueue(aValue: value1)
        queue.enQueue(aValue: value2)
        queue.enQueue(aValue: value3)
        
        var output = 0
        
        if let nextValue = queue.head.next?.next?.value{
            output = nextValue
        }
        
        XCTAssertEqual(output, 31)
    }
    
    func testThatAQueueCanDeQueueAValue() {
        let queue = Queue<Int>()
        let value = 44
        queue.enQueue(aValue: value)
        let output = queue.deQueue(aValue: value)
        
        XCTAssertEqual(output, value)
    }
    
    func testThatAQueueWillReturnNilWhenAskedToDeQueueANilValue() {
        let queue = Queue<Int>()
        let value = 44
        queue.enQueue(aValue: value)
        queue.head.value = nil
        let output = queue.deQueue(aValue: value)
        
        XCTAssertNil(output)
    }

}
