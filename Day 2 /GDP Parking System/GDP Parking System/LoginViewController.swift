//
//  ViewController.swift
//  GDP Parking System
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 Dilpreet Singh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   
    var welcomeTitle: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtuser: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBAction func btnlogin(_ sender: UIBarButtonItem) {
        let Email = txtuser.text
        let Password = txtpassword.text
        
        if (Email == "admin" && Password == "admin") {
            
            let infoAlert = UIAlertController(title: "Login Successful", message: "you are authenticated" , preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Okay" , style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
            
            
        }
    }
    
   
    @IBAction func btnregister(_ sender: UIBarButtonItem) {
        let registerSB: UIStoryboard =
            UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
       // self.present(registerVC, animated: true, completion: nil)
        
        navigationController?.pushViewController(registerVC, animated: true)
    }
    

    
    

}

