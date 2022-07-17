//
//  AnswerViewController.swift
//  Choices
//
//  Created by Mindy Douglas on 7/15/22.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var answerText: UITextView!
    
    var color = Color()
    var number = Number()
    var iceCream = IceCream()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorChoice = color.getInfo()
        let numberChoice = number.getNumberSelection()
        let iceCreamChoice = iceCream.getIceCreamSelection()
        
        answerText.text = "\(numberChoice)\n\n\(iceCreamChoice)\n\n\(colorChoice)"
    }
}
