//
//  Wage.swift
//  window-shopper
//
//  Created by Islam on 6/20/18.
//  Copyright © 2018 Islam. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (forWage wage:Double, forPrice price:Double)-> Int {
        return Int (ceil(price/wage))
    }
}
