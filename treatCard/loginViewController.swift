//
//  loginViewController.swift
//  treatCard
//
//  Created by Baron Kwan on 4/2/16.
//  Copyright © 2016 chris shahin. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(sender: AnyObject) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail");
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword");
        
        if(userEmailStored == userEmail) {
            if(userPasswordStored == userPassword) {
                // Login successful
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
                self.dismissViewControllerAnimated(true, completion: nil);
            }
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
