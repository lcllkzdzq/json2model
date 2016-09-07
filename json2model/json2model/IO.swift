//
//  io.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class IO {
    func requestInput(show: String) -> String {
        print(show, terminator: ": ")
        return readLine(stripNewline: false) ?? ""
    }
}