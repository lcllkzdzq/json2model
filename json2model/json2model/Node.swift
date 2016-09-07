//
//  Node.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

protocol Node {
    func subNodes() -> Array<Node>?
}