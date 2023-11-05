//
//  ViewController.swift
//  advaidv pro
//
//  Created by Advaid on 01/11/23.
//  Copyright © 2023 Advaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var passkey = "password"
    var userkey = "admin"
    var num = 0
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var username1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func login1(_ sender: Any) {
        if password1.text == passkey && username1.text == userkey{
            
        }
        else{
            let alert = UIAlertController(title: "Login Failed", message: "Your Entered Username And Password is incorrect \n Plese register yourself if you have not logged in before ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: false,completion: nil)
            
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginsucc"{
            let destobj = segue.destination as! welcome
            destobj.name = userkey
        }
        
    }


}

