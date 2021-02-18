//
//  ViewController.swift
//  TwoButtons
//
//  Created by David W. on 2/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func setTextTapped(_ sender: UIButton) {
        label.text = textField.text
    }
    @IBAction func clearTextTapped(_ sender: UIButton) {
        textField.text = "Enter Text To Be Added Below"
        label.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

