//
//  Node.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

enum NodeType : String {
    case ObjectNode = "Object"
    case ArrayNode = "Array"
    case StringNode = "String"
    case NumberNode = "Number"
    case BoolNode = "Bool"
    case NullNode = "Null"
}

protocol Node {
    var type : NodeType { get }
    var subnodes : Array<Node>? { get }
    var parentNode : Node? { get }

    var originalData : AnyObject { get }
}