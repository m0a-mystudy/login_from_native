//
//  ViewController.swift
//  native_login
//
//  Created by Makoto Abe on 2018/12/06.
//  Copyright © 2018 m0a. All rights reserved.
//

import UIKit
//import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit


class ViewController: UIViewController,FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
//
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
//        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
//        loginButton.center = view.center
//
//        view.addSubview(loginButton)
        let fbLoginBtn = FBSDKLoginButton()
        fbLoginBtn.readPermissions = ["public_profile", "email"]
        fbLoginBtn.center = self.view.center
        fbLoginBtn.delegate = self
        self.view.addSubview(fbLoginBtn)
    }


}

