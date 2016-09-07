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

    init(array: Array<AnyObject>) {
        self.array = array
    }

    func subNodes() -> Array<Node>? {
        var nodeArray = Array<Node>()

        for value in array {
            nodeArray.append(NodeFactory.createNode(value))
        }

        return nodeArray
    }
}