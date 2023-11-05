//
//  End.swift
//  advaidv pro
//
//  Created by Advaid on 02/11/23.
//  Copyright © 2023 Advaid. All rights reserved.
//

import UIKit

class End: UIViewController {
    var restname = " "
    var nop = 1
    var names = " "
    
    var ssl1 : [String] = []
    var spr1 : [Int] = []
    var countrr1 : [Int] = []
    
    @IBOutlet weak var restlbl: UILabel!
    @IBOutlet weak var ttl: UILabel!
    
    @IBOutlet weak var Itemslbl: UILabel!
    
    @IBOutlet weak var countlbl1: UILabel!
    
    @IBOutlet weak var lastpricelbl: UILabel!
    @IBOutlet weak var namesss: UILabel!
    @IBOutlet weak var noplbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        restlbl.text = "Weklcome To "+restname
        noplbl.text = String(nop)
        namesss.text = "Hello "+names
        var items = ""
        var money = ""
        var lastmoney = ""
        var countlbl = ""
        var totalmoney = 0
        for element in ssl1{
            items = items+element+"\n"
        }
        for element2 in countrr1{
            countlbl = countlbl+String(element2)+"\n"
        }
        for i in 0..<spr1.count{
            totalmoney+=spr1[i]*countrr1[i]
            money = String(spr1[i]*countrr1[i])
            lastmoney = lastmoney+money+"\n"
        }
        Itemslbl.text = items
        lastpricelbl.text = lastmoney
        countlbl1.text = countlbl
        ttl.text = String(totalmoney)
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonclick(_ sender: Any) {
        let alert = UIAlertController(title: "Payment Method", message: "Confirm Payment Using", preferredStyle: UIAlertController.Style.actionSheet)
        let paytm = UIAlertAction(title: "Paytm", style: UIAlertAction.Style.default){
            (_) in self.performSegue(withIdentifier: "paymentgt", sender: self)
        }
        let google = UIAlertAction(title: "Google Pay", style: UIAlertAction.Style.default){
            (_) in self.performSegue(withIdentifier: "paymentgt", sender: self)
        }
        alert.addAction(paytm)
        alert.addAction(google)
        present(alert,animated: true,completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
