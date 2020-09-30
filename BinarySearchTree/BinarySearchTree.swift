//
//  BinarySearchTree.swift
//  BinarySearchTree
//
//  Created by Frank McAuley on 9/29/20.
//

import Foundation

class BSTNode<T: Comparable> {
    var value: T?
    var left: BSTNode<T>?
    var right: BSTNode<T>?
    
    func breathFirstSearch(_ node: BSTNode<T>) {
        let queue = Queue<BSTNode<T>>()
        var currentNode: BSTNode<T>
        
        queue.enQueue(aValue: node)
        while queue.hasValues(){
            if let queueNode = queue.deQueue(){
                
            }
        }
    }
}

class BinarySearchTree<T: Comparable> {
    var root: BSTNode<T>
    
    init() {
        root = BSTNode<T>()
    }
    
    func insert(value: T) {
        guard root.value != nil else {
            root.value = value
            return
        }
    
        var current = root
    
        while current.value != value {
            if let rootValue = current.value {
                if value < rootValue {
                    if let currentLeft = current.left {
                        current = currentLeft
                    } else {
                        let node = BSTNode<T>()
                        node.value = value
                        current.left = node
                    }
                } else {
                    if let currentRight = current.right {
                        current = currentRight
                    } else {
                        let node = BSTNode<T>()
                        node.value = value
                        current.right = node
                    }
                }
            }
        }
    }
    
}
