//
//  EditProfileVC.swift
//  iOSDevOps
//
//  Created by Dhaval Barot on 04/12/18.
//  Copyright © 2018 Dhaval Barot. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {

  var user:User!
  
  @IBOutlet weak var lblWelcome:UILabel!
  @IBOutlet weak var txtUserName: UITextField!
  @IBOutlet weak var btnSave: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    prepareView()
  }

  func prepareView() {
    lblWelcome.text = "Welcome, User : \(user.email ?? "")."
  }
  
  @IBAction func btnSaveTap(_ sender: UIButton) {
    if isValidUserName() {
      user.updateEmail(email: txtUserName.text!)
      prepareView()
    }
  }
  
  func isValidUserName() -> Bool {
    if txtUserName.text != nil, (txtUserName.text?.count)! > 0 {
      return true
    }
    return false
  }
}
