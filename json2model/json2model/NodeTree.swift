//
//  NodeTree.swift
//  json2model
//
//  Created by lcl on 16/9/9.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class NodeTree {
    var rootNode : Node
    var objectArray : Array<Node> = []

    init(data : AnyObject) {
        rootNode = NodeFactory.createNode(data, parent: nil)
    }

    func createObjectIndex() {
        emulateNode(rootNode) { (node) in
            if node.dynamicType == ObjectNode.self {
                print(node.originalData)
            }
        }
    }

    func emulateNode(node: Node, exec: (node: Node)->()) {
        if let subnodes = node.subnodes {
            for subnode in subnodes {
                exec(node: subnode)
                emulateNode(subnode, exec: exec)
            }
        } else {
            return
        }
    }
}