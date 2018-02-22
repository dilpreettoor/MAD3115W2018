//
//  RegisterViewController.swift
//  GDP Parking System
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 Dilpreet Singh. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var txtName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtContact: UITextField!
    @IBOutlet weak var txtPostal: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var dateOfBirth: UIDatePicker!
    @IBOutlet weak var cityPicker: UIPickerView!
    
    var cityList: [String] =
    ["Vancouver","Ottawa","Toronto","Calgary","Windsor","Ajax","Pickering","Montreal","Alberta","Brampton"]
    var selectedCityIndex: Int = 0
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.cityList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.cityList[row]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        let btnSubmit = UIBarButtonItem(title: "Submit",style: .plain, target: self, action: #selector(displayvalues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    @objc private func displayvalues() {
        self.selectedCityIndex =
            self.cityPicker.selectedRow(inComponent: 0)
        
        let allData: String = "\(self.txtName.text!) \n \(self.txtContact.text!) \n \(self.dateOfBirth.date) \n \(self.txtPostal.text!) \n \(self.txtEmail.text!) \n \(self.cityList[selectedCityIndex])"
        
        let infoAlert = UIAlertController(title: "Verify", message: allData , preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "confirm", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        self.present(infoAlert, animated: true)
        
    }
    /*
    @objc private func displayValues(){
        let infoAlert = UIAlertController(title: "Verify", message: "Please verify your details", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in
            self.displayWelcomeScreen()
            
        }))
        
        
        
        self.present(infoAlert, animated: true)
        
    }
 */
    
    func displayWelcomeScreen() {
        let welcomeSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "WelcomeScreen") as! WelcomeViewController
        
        welcomeVC.welcomeTitle = txtName.text!
        
        navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
//add data tin picker
        self.cityPicker.delegate = self
        self.cityPicker.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
