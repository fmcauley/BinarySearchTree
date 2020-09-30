//
//  Queue.swift
//  BinarySearchTree
//
//  Created by Frank McAuley on 9/30/20.
//

import Foundation

class QNode<T> {
    var value: T?
    var next: QNode<T>?
}

class Queue<T> {
    var head: QNode<T>
    init() {
        head = QNode<T>()
    }
    
    func enQueue(aValue value: T) {
        guard head.value != nil else {
            head.value = value
            return
        }
        
        var current = head
        let newNode = QNode<T>()
        while current.next != nil {
            if let currentNext = current.next{
                current = currentNext
            }
        }
        
        newNode.value = value
        current.next = newNode
    }
    
    func deQueue() -> T? {
        guard head.value != nil else {
            return nil
        }
        
        let current = head
        var output: T?
        
        if let valueToReturn = current.value{
            output = valueToReturn
            if let headNext = current.next {
                head = headNext
            }
            return output
        }
        return nil
    }
    
    func hasValues() -> Bool {
        guard head.value != nil else {
            return false
        }
        return true
    }
    
    
}
