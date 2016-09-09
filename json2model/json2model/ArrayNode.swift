//
//  ArrayNode.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class ArrayNode: Node {
    var array = Array<AnyObject>()
    var type: NodeType = .ArrayNode
    var subnodes : Array<Node>? = Array<Node>()
    var parentNode: Node?
    
    init(array: Array<AnyObject>, parent : Node?) {
        self.array = array
        self.parentNode = parent

        for value in array {
            subnodes!.append(NodeFactory.createNode(value, parent: self))
        }
    }

    var originalData: AnyObject {
        get {
            return array;
        }
    }

}