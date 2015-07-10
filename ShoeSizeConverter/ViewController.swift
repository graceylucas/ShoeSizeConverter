//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Mary Grace Lucas on 7/10/15.
//  Copyright (c) 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        //Definies a variable called shoe size and pulls it from the mensShoeSizeTextField
        let sizeFromTextField = mensShoeSizeTextField.text
        
        //Converts shoe size from a string into an integer so it can be added with the constant (matching the types)
        let numberFromTextField = sizeFromTextField.toInt()
        
        //Adding an exclaimation point force unwraps the optional integer; it's no longer an optional interger
        var integerFromTextField = numberFromTextField!
        
        //Defines the constant as 30
        let conversionConstant = 30
        
        //Adds shoe size and constant
        integerFromTextField += conversionConstant
        
        //Unhides label after the button is pressed
        mensConvertedShoeSizeLabel.hidden = false
        
        //Converts the sum into a string so it can be displayed in the label
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        
        //Sets the label text to the text of the new string holding the update shoe size
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
        //Tucks keyboard away after hitting button
        mensShoeSizeTextField.resignFirstResponder()
        
        //Empties text field after user presses button
        mensShoeSizeTextField.text = ""
        
        
        
    }

}

