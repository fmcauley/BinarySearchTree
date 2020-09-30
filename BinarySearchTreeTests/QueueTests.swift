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
    
//    func testThatAQueueCanEnQueueAValue() {
//        let queue = Queue<Int>()
//        let value = 42
//        queue.enQueue(aValue:value)
//    }

}
