//
//  ViewController.swift
//  iOSDevOps
//
//  Created by Dhaval Barot on 04/12/18.
//  Copyright © 2018 Dhaval Barot. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

  @IBOutlet weak var txtEmail:UITextField!
  @IBOutlet weak var txtPassword:UITextField!
  @IBOutlet weak var btnLogin:UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowEditProfile" {
      let VC = segue.destination as! EditProfileVC
      VC.user = User(email: txtEmail.text!, password: txtPassword.text!)
    }
  }
  
  @IBAction func btnLoginTap(_ sender: UIButton) {
    if isValidDetails() {
      clearTextFields()
      self.performSegue(withIdentifier: "ShowEditProfile", sender: self)
    }
  }
  
  func isValidDetails() -> Bool {
    if isValidEmail() && isValidPassword() {
      return true
    }
    return false
  }
  
  func isValidEmail() -> Bool {
    if txtEmail.text == "Dhaval" {
      return true
    }
    return false
  }
  
  func isValidPassword() -> Bool {
    if txtPassword.text == "Barot" {
      return true
    }
    return false
  }
  
  func clearTextFields() {
    txtEmail.resignFirstResponder()
    txtEmail.text = ""
    
    txtPassword.resignFirstResponder()
    txtPassword.text = ""
  }
}

