//
//  ViewController.swift
//  Design - Day 1
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 Dilpreet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtuname: UITextField!
    @IBOutlet weak var lbluname: UILabel!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var lblpassword: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnLoginAction(_ sender: UIButton) {
        var username = txtuname.text!
        lbluname.text = username
        var password = txtpassword.text!
        lblpassword.text = password
        
         // let infoAlert = UIAlertController(title: "User Information", message: txtuname.text!, preferredStyle: .alert
            let infoAlert = UIAlertController(title: "User Information", message: txtuname.text!, preferredStyle: .actionSheet
        )
        infoAlert.addAction(UIAlertAction(title: "Login", style: .default, handler: nil))
         infoAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(infoAlert, animated: true, completion: nil )
    }
    
    @IBAction func btnreset(_ sender: Any) {
        lbluname.text = "Username"
        lblpassword.text = "Password"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

