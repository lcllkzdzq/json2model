//
//  ObjectNode.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class ObjectNode: Node {
    var dic = Dictionary<String, AnyObject>()

    init(dic: Dictionary<String, AnyObject>) {
        self.dic = dic
    }

    func subNodes() -> Array<Node>? {
        var nodeArray = Array<Node>()

        for (_, value) in dic {
            nodeArray.append(NodeFactory.createNode(value))
        }

        return nodeArray
    }
}