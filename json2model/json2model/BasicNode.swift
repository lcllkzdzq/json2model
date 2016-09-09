//
//  BasicNode.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class BasicNode: Node {
    var object : AnyObject
    var type: NodeType
    var subnodes : Array<Node>? = nil
    var parentNode: Node?

    init(obj: AnyObject, parent : Node?) {
        self.object = obj
        self.type = .StringNode
        self.parentNode = parent
    }

    var originalData: AnyObject {
        get {
            return object
        }
    }
}