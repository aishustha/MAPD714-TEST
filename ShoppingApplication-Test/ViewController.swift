//  FileName:
//  ViewController.swift
//  ShoppingApplication-Test
//
//  Author's Name:
//  Aishwarya Shrestha
//  ashres15@my.centennialcollege.ca
//
//  Student ID:
//  301138662
//  Created by Aishwarya Shrestha on 2021-10-31.
//

import UIKit

class ViewController: UIViewController {
    
    //textfield and label variable declaration
    @IBOutlet weak var TitleName: UITextField!
    @IBOutlet weak var TitleNameDisplay: UILabel!
    
    //declaration of add button function
    @IBAction func AddBtn(_ sender: UIButton) {
        TitleNameDisplay.text = TitleName.text
        TitleName.text = ""
    }
    
    //listitems declaration
    @IBOutlet weak var ListItem1: UITextField!
    @IBOutlet weak var ListItem2: UITextField!
    @IBOutlet weak var ListItem3: UITextField!
    @IBOutlet weak var ListItem4: UITextField!
    @IBOutlet weak var ListItem5: UITextField!
    
    //quantity declaration
    @IBOutlet weak var Quantity1: UITextField!
    @IBOutlet weak var Quantity2: UITextField!
    @IBOutlet weak var Quantity3: UITextField!
    @IBOutlet weak var Quantity4: UITextField!
    @IBOutlet weak var Quantity5: UITextField!
    
    //stepper declaration
    @IBOutlet weak var Stepper1: UIStepper!
    @IBOutlet weak var Stepper2: UIStepper!
    @IBOutlet weak var Stepper3: UIStepper!
    @IBOutlet weak var Stepper4: UIStepper!
    @IBOutlet weak var Stepper5: UIStepper!
    
    //declartion of stepper handler function
    @IBAction func itemChange1(_ sender: UIStepper) {
        Quantity1.text = String(Int(sender.value))
    }
   
    @IBAction func itemChange2(_ sender: UIStepper) {
        Quantity2.text = String(Int(sender.value))
    }
    
    @IBAction func itemChange3(_ sender: UIStepper) {
        Quantity3.text = String(Int(sender.value))
    }
    
    @IBAction func itemChange4(_ sender: UIStepper) {
        Quantity4.text = String(Int(sender.value))
    }
  
    @IBAction func itemChange5(_ sender: UIStepper) {
        Quantity5.text = String(Int(sender.value))
    }
   
    
    //declaration of cancel button function
    @IBAction func CancelBtn(_ sender: UIButton) {
        // reset quantity display
        Quantity1.text="0"
        Quantity2.text="0"
        Quantity3.text="0"
        Quantity4.text="0"
        Quantity5.text="0"
        
        // reset the steppers
        Stepper1.value=0
        Stepper2.value=0
        Stepper3.value=0
        Stepper4.value=0
        Stepper5.value=0
        
        // clear input fields
        TitleNameDisplay.text = "Shopping List"
        TitleName.text=""
        ListItem1.text=""
        ListItem2.text=""
        ListItem3.text=""
        ListItem4.text=""
        ListItem5.text=""
    }

   //declaration of save and cancel button
    @IBOutlet weak var Save: UIButton!
    
    @IBOutlet weak var Cancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

