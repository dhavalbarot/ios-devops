//
//  User.swift
//  iOSDevOps
//
//  Created by Dhaval Barot on 04/12/18.
//  Copyright © 2018 Dhaval Barot. All rights reserved.
//

import UIKit

class User: NSObject {

  var email:String!
  var password:String!
  
  init(email:String, password:String) {
    self.email = email
    self.password = password
  }
  
  func updateEmail(email: String) {
    self.email = email
  }
}
