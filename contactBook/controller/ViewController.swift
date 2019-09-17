//
//  ViewController.swift
//  contactBook
//
//  Created by Chitra Hari on 07/08/19.
//  Copyright © 2019 Chitra Hari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
        
        var arrayName : [String] = []
        var arrayNum : [String] = []
   
    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var enterMobile: UITextField!
    
    @IBAction func btnNext(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: .none )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
        let obj = segue.destination as! newViewController
          obj.nameText = arrayName
          obj.numText = arrayNum
        }
    }
  
    @IBAction func btnSubmit(_ sender: UIButton) {
     arrayName.append(enterName.text!)
        arrayNum.append(enterMobile.text!)
        enterName.text = ""
        enterMobile.text = ""
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        enterName.text = ""
        enterMobile.text = ""
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

