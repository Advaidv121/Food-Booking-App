//
//  welcome.swift
//  advaidv pro
//
//  Created by Advaid on 01/11/23.
//  Copyright © 2023 Advaid. All rights reserved.
//

import UIKit

class welcome: UIViewController{
        var head1 = " "
    var nof = 1
    var name : String!
    @IBOutlet weak var welcometext: UILabel!
    var photoarr = ["Raj's Cafe","Food Bay","Paradise Court","Eat N Go"]
    
   
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var no1: UILabel!
    @IBOutlet weak var no2: UILabel!
    
    @IBOutlet weak var no5: UIButton!
    @IBOutlet weak var no4: UILabel!
    @IBOutlet weak var no3: UILabel!
    
    @IBOutlet weak var noofpeople: UILabel!
    @IBOutlet weak var restaurant: UILabel!
    @IBOutlet weak var photos: UISegmentedControl!
    @IBOutlet weak var slidernum: UISlider!
    
    @IBOutlet weak var sliderlabel: UILabel!
    
    @IBOutlet weak var photoarea: UIImageView!
    @IBAction func segaction(_ sender: Any) {
        photoarea.image = UIImage(named: String(photos.selectedSegmentIndex))
        let num = photos.selectedSegmentIndex
        restaurant.text = photos.titleForSegment(at: num)
        head1 = restaurant.text!
    }

    @IBAction func slideact(_ sender: Any) {
        sliderlabel.text = String(Int((slidernum.value)))
        noofpeople.text = String(Int(slidernum.value))
        nof = Int(noofpeople.text!)!
        no1.isHidden = false
        no3.isHidden = false
        no2.isHidden = false
        no4.isHidden = false
        no5.isHidden = false
        pic1.isHidden = false
        restaurant.isHidden = false
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcometext.text = "Welcome user "+name
        photoarea.image = UIImage(named: "0")
        
        

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let send = segue.destination as! menu
        send.heading = head1
        send.nofi = nof
        send.name1 = name
        
        
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
