//
//  UserTests.swift
//  iOSDevOpsTests
//
//  Created by Dhaval Barot on 05/12/18.
//  Copyright © 2018 Dhaval Barot. All rights reserved.
//

import XCTest
@testable import iOSDevOps

class UserTests: XCTestCase {

  func testCreateInstance() {
    //Arrange
    let email = "Dhaval"
    let password = "Barot"
    
    //Act
    let user = User(email: email, password: password)
    
    //Accert
    XCTAssertNotNil(user, "User not initialize.")
    XCTAssertEqual(user.email, email, "User name not initialized.")
    XCTAssertEqual(user.password, password, "User name not initialized.")
  }
  
  func testUpdateEmail() {
    
    //Arrange
    let oldEmail = "Dhaval"
    let newEmail = "Mr.Dhaval"
    let password = "Barot"
    let user = User(email: oldEmail, password: password)
    
    //Act
    user.updateEmail(email: newEmail)
    
    //Accert
    XCTAssertEqual(user.email, newEmail, "User name not updated.")
    
  }

}
