//
//  ViewController.swift
//  devslopes-social
//
//  Created by ٍRawan Alhathal on 21‏/9‏/١٤٣٨.
//  Copyright © ١٤٣٨ ٍRawan Alhathal. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var emailFeild: FancyField!
    @IBOutlet weak var pwdFeild: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func facebookBtnTapped(_ sender:AnyObject) {
        
    
    let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self, handler: {(result, Error) in
            if Error != nil{
                print ("JESS: unabale to authintication with facebook -\(Error)")
            }
            else{
                print("JESS: successfully athunticated with facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                firebaseAuth(credential)

            }
        }
    
        )
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        if let email = emailFeild.text, let pwd = pwdFeild.text {
            FIRAuth.auth()?.signIn(withEmail: email, password: pwd, completion: {(user, error) in
                if error == nil {
                    print ("JESS: email user authunticated with firebase")
                }else{
                    FIRAuth.auth()?.signIn(withEmail: email, password: pwd, completion: {(user, error) in
                        if error != nil {
                            print("JESS: unabale to authenticated with firebase using email")
                        } else{
                            print("JESS: Succesfully authenticated with firebase")
                        }
                        
                    })
                }
                
            })
            
        }
        
        
    }
    }
    
    
    func firebaseAuth(_ cordential: FIRAuthCredential){
    FIRAuth.auth()?.signIn(with: cordential, completion: {(user, error) in
    if error != nil{
    print ("JESS: Unabale to authinticate with firebase -\(error) ")
    }
    else{
    print ("Successfuly authunticated with firebase")
    }
    })
        
        
    
}




