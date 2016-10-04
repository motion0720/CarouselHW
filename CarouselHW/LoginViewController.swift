//
//  LoginViewController.swift
//  CarouselHW
//
//  Created by SHEN, MENGNAN on 10/3/16.
//  Copyright © 2016 SHEN, MENGNAN. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120

    
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            self.signInScrollView.contentOffset.y = self.signInScrollView.contentInset.bottom
            
        }
        
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
        }
        
        
        
        signInScrollView.contentSize = signInScrollView.frame.size
        signInScrollView.contentInset.bottom = 100

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogin(_ sender: AnyObject) {
        
        loginIndicator.startAnimating()
       
        
        if emailTextField.text == "hi@hi.com" && passwordTextField.text == "Password" {
            
            
            delay(2) {
                
                self.loginIndicator.stopAnimating()
                
                
                self.performSegue(withIdentifier: "signInSegue", sender: nil)
            
            
            }
            
        }else if emailTextField.text!.isEmpty {
            
            self.loginIndicator.stopAnimating()
            
            let emailEmptyAlertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
                
            }

            
            emailEmptyAlertController.addAction(OKAction)
            
            
            present(emailEmptyAlertController, animated: true)
      
            
        }else if passwordTextField.text!.isEmpty{
            
            self.loginIndicator.stopAnimating()
            
         
            let passwordEmptyAlertController = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
                
            }
            
            passwordEmptyAlertController.addAction(OKAction)
            
            present(passwordEmptyAlertController, animated: true)
     
        
        
        }else{
            
            loginIndicator.startAnimating()
            
            let invalidAlertController = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid email or password", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
                
            }
            
            invalidAlertController.addAction(OKAction)
            
            delay(2) {
                
                self.loginIndicator.stopAnimating()
                
                
                self.present(invalidAlertController, animated: true)
                
                
            }

           
                
                
            }

            
           
            
            
        }
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


