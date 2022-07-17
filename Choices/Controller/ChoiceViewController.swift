//
//  ChoiceViewController.swift
//  Choices
//
//  Created by Mindy Douglas on 7/15/22.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var redbutton: UIButton!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    
    var iceCream = IceCream()
    var number = Number()
    var color = Color()
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deselectAllButtons()
    }
    
    func deselectAllButtons() {
       
        redbutton.layer.shadowOpacity = 0
        redbutton.titleLabel?.isHidden = true
        
        orangeButton.layer.shadowOpacity = 0
        orangeButton.titleLabel?.isHidden = true
        
        yellowButton.layer.shadowOpacity = 0
        yellowButton.titleLabel?.isHidden = true
        
        greenButton.layer.shadowOpacity = 0
        greenButton.titleLabel?.isHidden = true
        
        blueButton.layer.shadowOpacity = 0
        blueButton.titleLabel?.isHidden = true
  
        purpleButton.layer.shadowOpacity = 0
        purpleButton.titleLabel?.isHidden = true
       
        pinkButton.layer.shadowOpacity = 0
        pinkButton.titleLabel?.isHidden = true
     
        blackButton.layer.shadowOpacity = 0
        blackButton.titleLabel?.isHidden = true
       
        whiteButton.layer.shadowOpacity = 0
        whiteButton.titleLabel?.isHidden = true
    }
    
    @IBAction func buttonSelected(_ sender: UIButton) {
        deselectAllButtons()
        sender.titleLabel?.isHidden = false
        color.colorSelection = sender.titleLabel?.text ?? ""

        // highlight when selected
        sender.layer.shadowColor = UIColor.white.cgColor
        sender.layer.shadowRadius = 7
        sender.layer.shadowOpacity = 1
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func flavorSegmentedControl(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            iceCream.iceCreamSelection = "chocolate"
        } else if segmentedControl.selectedSegmentIndex == 1 {
            iceCream.iceCreamSelection = "vanilla"
        } else {
            iceCream.iceCreamSelection = "strawberry"
        }
    }
    
    
    @IBAction func numberStepper(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
        number.numberSelection = Int(sender.value)
    }
    

    // this provides the answers for the answer view controller
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? AnswerViewController {
            destination.color = self.color
            destination.number = self.number
            destination.iceCream = self.iceCream
        }
    }
}
