//
//  main.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation





let io = IO()

let path = Process.arguments[1] as NSString

if let jsonData = NSData(contentsOfFile: path.stringByExpandingTildeInPath) {
    do {
        let result = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments)

        let rootNode = NodeFactory.createNode(result)

    } catch {

    }
}

func emulateNode(node: Node) {
    if let subnodes = node.subNodes() {
        for subnode in subnodes {
            emulateNode(subnode)
        }
    } else {
        return
    }
}







