//
//  ViewController.swift
//  Login
//
//  Created by David W. on 3/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ForgotPass: UIButton!
    @IBOutlet var forgotUser: UIButton!
    @IBOutlet var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{return}
        
        if(sender == forgotUser)
        {
            segue.destination.navigationItem.title = "Forgot Username"
        }else if(sender == ForgotPass)
        {
            segue.destination.navigationItem.title = "Forgot Password"
        }else
        {
            segue.destination.navigationItem.title = username.text
        }
        

    }

    @IBAction func forgotUserAction(_ sender: UIButton) {
        performSegue(withIdentifier: "NavViewSeg", sender: sender)
        
    }
    
    @IBAction func forPassAction(_ sender: UIButton) {
        performSegue(withIdentifier: "NavViewSeg", sender: sender)
    }
    
}

