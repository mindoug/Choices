//
//  IceCream.swift
//  Choices
//
//  Created by Mindy Douglas on 7/16/22.
//

import Foundation

struct IceCream {
    var iceCreamSelection = ""
    
    func getIceCreamSelection() -> String {
        if iceCreamSelection == "chocolate" {
            return Constants.chocolate
        } else if iceCreamSelection == "vanilla" {
            return Constants.vanilla
        } else {
            return Constants.strawberry
        }
    }
}
