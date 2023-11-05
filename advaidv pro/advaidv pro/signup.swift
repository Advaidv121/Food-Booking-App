//
//  signup.swift
//  advaidv pro
//
//  Created by Advaid on 01/11/23.
//  Copyright © 2023 Advaid. All rights reserved.
//

import UIKit

class signup: UIViewController {

    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signup1(_ sender: Any) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "signupsucc"{
            let destobj = segue.destination as! welcome
            destobj.name = username.text
        }
    }

}
