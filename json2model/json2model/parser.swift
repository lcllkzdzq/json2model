//
//  paser.swift
//  json2model
//
//  Created by lcl on 16/9/7.
//  Copyright © 2016年 Vulpes. All rights reserved.
//

import Foundation

class Parser {
    var objectSet = Set<Set<String>>()
    var io : IO?

    func arrayScan(array: Array<AnyObject>) {
        for obj in array {
            if isBasicType(obj) {

            } else if obj.isKindOfClass(NSArray.self) {

            } else if obj.isKindOfClass(NSDictionary.self) {

            } else {
//                assert(<#T##condition: Bool##Bool#>)
            }
        }

    }

    func objectScan(obj: Dictionary<String, AnyObject>) {
        
    }

    func isBasicType(obj: AnyObject) -> Bool{
        if obj.isKindOfClass(NSNumber.self) || obj.isKindOfClass(NSString.self) || obj.isKindOfClass(NSNull.self){
            return true;
        } else {
            return false
        }
    }
}

