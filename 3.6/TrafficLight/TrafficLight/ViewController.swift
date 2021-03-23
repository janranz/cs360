//
//  ViewController.swift
//  TrafficLight
//
//  Created by David W. on 3/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var SwitchSeg: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){}
    
    
    @IBAction func ToYellowAction(_ sender: UIButton)
    {
        if SwitchSeg.isOn
        {
            performSegue(withIdentifier: "ToYellowSeg", sender: sender)
        }
    }
    
    
    @IBAction func ToGreenAction(_ sender: UIButton)
    {
        if SwitchSeg.isOn
        {
            performSegue(withIdentifier: "ToGreenSeg", sender: sender)
        }
    }
}

