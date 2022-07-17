//
//  Number.swift
//  Choices
//
//  Created by Mindy Douglas on 7/16/22.
//

import Foundation

struct Number {
    var numberSelection = 1
    
    func getNumberSelection() -> String {
    
    switch numberSelection {
    case 1:
        return Constants.one
    case 2:
        return Constants.two
    case 3:
        return Constants.three
    case 4:
        return Constants.four
    case 5:
        return Constants.five
    case 6:
        return Constants.six
    case 7:
        return Constants.seven
    case 8:
        return Constants.eight
    case 9:
        return Constants.nine
    default:
        return "Your number choice was very unique."
    
        }
    }
}
