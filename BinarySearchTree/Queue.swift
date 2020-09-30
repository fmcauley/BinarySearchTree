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
    
    
}
