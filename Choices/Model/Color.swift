//
//  Color.swift
//  Choices
//
//  Created by Mindy Douglas on 7/16/22.
//

import Foundation

struct Color {
    var colorSelection = ""
    
    func getInfo() -> String {
    switch colorSelection {
    case "Red":
        return Constants.red
    case "Orange":
        return Constants.orange
    case "Yellow":
        return Constants.yellow
    case "Green":
        return Constants.green
    case "Blue":
        return Constants.blue
    case "Purple":
        return Constants.purple
    case "Pink":
        return Constants.pink
    case "Black":
        return Constants.black
    case "White":
        return Constants.white
    default:
        return "You are very mysterious."
    }
  }
}
