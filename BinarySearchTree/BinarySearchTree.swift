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
            if let queueNode = queue.deQueue() {
                currentNode = queueNode
                
                
                //printTheValue
                if let valueOfNode = currentNode.value {
                    print("node value is: \(valueOfNode)")
                }
                
                if let left = currentNode.left{
                    queue.enQueue(aValue: left)
                }
                if let right = currentNode.right{
                    queue.enQueue(aValue: right)
                }
            }
            
        }//end while
    }
    
    func findAddends(sum: Int, fromNode node: BSTNode<T>) -> [(Int,Int)] {
        let queue = Queue<BSTNode<T>>()
        var currentNode: BSTNode<T>
        var arrOfPairs = [(Int, Int)]()
        var set = Set<Int>()
        
        queue.enQueue(aValue: node)
        
        while queue.hasValues(){
            if let queueNode = queue.deQueue() {
                currentNode = queueNode
                
                //make check for value
                if let currentValue = currentNode.value as? Int {
                    let output = sum - currentValue
                    if set.contains(output) {
                        arrOfPairs.append((output, currentValue))
                    } else {
                        set.insert(currentValue)
                    }
                }
                
                //printTheValue
                if let valueOfNode = currentNode.value {
                    print("node value is: \(valueOfNode)")
                }
                
                if let left = currentNode.left{
                    queue.enQueue(aValue: left)
                }
                if let right = currentNode.right{
                    queue.enQueue(aValue: right)
                }
            }
            
        }//end while
        
        return arrOfPairs
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
    
    func bulkInsert(_ values:[T]) {
        for x in values {
            insert(value: x)
        }
    }
    
    // recursive in-order tree walk
    func search(_ node: BSTNode<T>, _ key: T) -> T? {
        if key == node.value {
            return node.value
        }
        
        if let nodeValue = node.value {
            if key < nodeValue {
                if let nodeLeft = node.left {
                    return search(nodeLeft, key)
                }
            } else {
                if let nodeRight = node.right {
                    return search(nodeRight, key)
                }
            }
        }
        return node.value
    }
    
    func interativeSearch(_ node: BSTNode<T>, _ key: T) -> T? {
        guard node.value != nil else {
            return node.value
        }
        
        while key != node.value {
            if let nodeValue = node.value {
                if key < nodeValue {
                    node.value = node.left?.value
                } else {
                    node.value = node.right?.value
                }
            }
        }
        
        return node.value
    }
    
}
