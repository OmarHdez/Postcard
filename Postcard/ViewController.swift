//
//  ViewController.swift
//  Postcard
//
//  Created by Omar Hernandez on 6/12/14.
//  Copyright (c) 2014 Omar Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterTextTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterTextTextField.text
        messageLabel.textColor = UIColor.redColor()
        // Omar test
        // This is to delete Text from TextFild. 
        enterTextTextField.text = ""
        // This is to hide the keybord from the active view.
        enterTextTextField.resignFirstResponder()
        // This is to rename the text in the button, we have to set it to NORMAL.
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }
    

}

