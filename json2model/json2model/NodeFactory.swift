//
//  NodeFactory.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class NodeFactory {
    class func createNode(from: AnyObject, parent: Node?) -> Node {
        if from.isKindOfClass(NSDictionary.self) {
            return ObjectNode(dic: from as! Dictionary, parent: parent)
        } else if from.isKindOfClass(NSArray.self) {
            return ArrayNode(array: from as! Array, parent: parent)
        } else {
            return BasicNode(obj: from, parent: parent)
        }
    }
}