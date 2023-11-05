//
//  menu.swift
//  advaidv pro
//
//  Created by Advaid on 01/11/23.
//  Copyright © 2023 Advaid. All rights reserved.
//

import UIKit

class menu: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let food = ["Burger","Pizza","pasta","Drinks"]
    var burger = ["Cheese Burger","Veggie Burger","Paneer Burger","Chicken Burger","Pork Burger","Mutton Burger"]
    let brpice = [100,70,60,80,110,130]
    var pizza = ["Italian pizza","Veg Pizza","Paneer Pizza","Classic chicken","BBQ Chicken","Hunger Pizza"]
    let pzprice = [150,200,230,110,140,300]
    var pasta = ["Italian pasta","White sauce pasta","Red sauce","Italian meat pasta","White sauce pasta","Chicken Red sauce"]
    let psprize = [200,180,160,150,140,230]
    var drinks = ["Water","Soda","Orange Juice","Watermeon Juice","Grape Juice","Carrot Juice"]
    let dkprize = [20,20,40,30,50,40]
    var nofi = 1
    var name1 = " "
    var nofis : Int = 1
    
    @IBOutlet weak var header1: UILabel!
    @IBOutlet weak var selectedtxt: UILabel!
    
    @IBOutlet weak var pricehid: UILabel!
    
    var heading : String = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        header1.text = "Welcome to "+heading

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return food.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burger.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if (indexPath.section == 0) {
            cell.textLabel?.text = burger[indexPath.row]
            if indexPath.row < 3{
                cell.imageView?.image = UIImage(named: "vg")
            }
            else{
                cell.imageView?.image = UIImage(named: "nvg")
            }
        }
        else if(indexPath.section == 1){
            cell.textLabel?.text = pizza[indexPath.row]
            if indexPath.row < 3{
                cell.imageView?.image = UIImage(named: "vg")
            }
            else{
                cell.imageView?.image = UIImage(named: "nvg")
            }
        }
        else if(indexPath.section == 2){
            cell.textLabel?.text = pasta[indexPath.row]
            if indexPath.row < 3{
                cell.imageView?.image = UIImage(named: "vg")
            }
            else{
                cell.imageView?.image = UIImage(named: "nvg")
            }
        }
        else{
            cell.textLabel?.text = drinks[indexPath.row]
            cell.imageView?.image = UIImage(named: "vg")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return food[section]
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return " "
    }

    
    @IBOutlet weak var pricelbl: UILabel!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            selectedtxt.text = burger[indexPath.row]
            pricelbl.text = String(brpice[indexPath.row])
            
        }
        else if indexPath.section == 1{
            selectedtxt.text = pizza[indexPath.row]
            pricelbl.text = String(pzprice[indexPath.row])
        }
        else if indexPath.section == 2{
            selectedtxt.text = pasta[indexPath.row]
            pricelbl.text = String(psprize[indexPath.row])
        }
        else{
            selectedtxt.text = drinks[indexPath.row]
            pricelbl.text = String(dkprize[indexPath.row])
        }

        
    }

    @IBOutlet weak var stepperlbl: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBAction func stepperval(_ sender: Any) {
        stepperlbl.text = String(Int(stepper1.value))
    }
    
    @IBOutlet weak var txtlbl123: UILabel!
  
    
    @IBOutlet weak var orders: UILabel!
    var ssl : [String] = []
    var spr : [Int] = []
    var countrr : [Int] = []
    @IBAction func add(_ sender: Any) {
        pricehid.isHidden = false
        if Int(stepperlbl.text!) != 0{
            ssl.append(selectedtxt.text!)
            spr.append(Int(pricelbl.text!)!)
            countrr.append(Int(stepper1!.value))
            var str = ""
            for index in 0..<ssl.count{
                str = str + ssl[index]+"   $"+String(spr[index])+"   : "+String(countrr[index])+"\n"
            }
            orders.text=str
        }
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let senderr = segue.destination as! End
        senderr.restname = heading
        senderr.nop = nofi
        senderr.names = name1
        senderr.ssl1 = ssl
        senderr.spr1 = spr
        senderr.countrr1 = countrr
        
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
