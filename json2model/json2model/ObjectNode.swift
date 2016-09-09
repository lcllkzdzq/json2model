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
    var type: NodeType = .ObjectNode
    var subnodes : Array<Node>? = Array<Node>()
    var parentNode: Node?

    init(dic: Dictionary<String, AnyObject>, parent : Node?) {
        self.dic = dic
        self.parentNode = parent

        for (_, value) in dic {
            subnodes!.append(NodeFactory.createNode(value, parent: self))
        }
    }

    var originalData: AnyObject {
        get {
            return dic
        }
    }

}