//
//  main.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation





let io = IO()
let parser = Parser()
parser.io = io

let path = Process.arguments[1] as NSString

if let jsonData = NSData(contentsOfFile: path.stringByExpandingTildeInPath) {
    do {
        let result = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments)

        if result.isKindOfClass(NSDictionary.self) {
            parser.objectScan(result as! Dictionary)
        } else if result.isKindOfClass(NSArray.self) {
            parser.arrayScan(result as! Array)
        } else {

        }

    } catch {

    }
}







