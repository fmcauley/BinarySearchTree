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
    var head: QNode<T>?
    init() {
        head = QNode<T>()
    }
    
    func enQueue(aValue value: T) {
        
        // it' possible that the queue can be
        // nil in the BFS work flow
        if head == nil {
            head = QNode<T>()
        }
        
        guard head?.value != nil else {
            head?.value = value
            return
        }
        
        var current = head
        let newNode = QNode<T>()
        while current?.next != nil {
            if let currentNext = current?.next{
                current = currentNext
            }
        }
        
        newNode.value = value
        current?.next = newNode
    }
    
    func deQueue() -> T? {
        guard head?.value != nil else {
            return nil
        }
        
        let value = head?.value
        
        if let currntTop = head {
            let current = currntTop.next
            head = current
        }
        
        return value
    }
    
    func hasValues() -> Bool {
        if (head?.value) != nil{
            return true
        }
        return false
    }
    
    
}
