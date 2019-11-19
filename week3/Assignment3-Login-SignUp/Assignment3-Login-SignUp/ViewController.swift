//
//  ViewController.swift
//  Assignment3-Login-SignUp
//
//  Created by Kai-Ta Hsieh on 2019/11/19.
//  Copyright © 2019 Charles Hsieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
        
        updateView()
        
        segmentedControl.backgroundColor = .darkGray
        segmentedControl.selectedSegmentTintColor = .white
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender == segmentedControl {
            updateView()
        }
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        if segmentedControl.selectedSegmentIndex == 0 {
            checkLogin()
        } else {
            checkSignup()
        }
    }
    
    func checkLogin() {
        if let account = accountTextField.text,
           let password = passwordTextField.text {
        // Optional binding is actually redundant because TextField.text has a default value of "".
            if account == "appworks_school@gmail.com" && password == "1234" {
                showAlert(title: "Done", text: "You are currently logged in.")
            } else {
                showAlert(title: "Error", text: "Login failed: incorrect account or password.")
            }
        }
    }
    
    func checkSignup() {
        if let account = accountTextField.text,
           let password = passwordTextField.text,
           let check = checkTextField.text {
            if account == "" {
                showAlert(title: "Error", text: "Account should not be empty.")
            } else if password == "" {
                showAlert(title: "Error", text: "Password should not be empty.")
            } else if check == "" {
                showAlert(title: "Error", text: "Check-password should not be empty.")
            } else if password != check {
                showAlert(title: "Error", text: "Signup fail: check-password and password is different.")
            } else {
                showAlert(title: "Done", text: "You've created a new account.")
            }
        }
    }
    
    func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            // "Log In" is selected
            checkLabel.textColor = .gray
            checkTextField.isEnabled = false
            
            accountTextField.returnKeyType = .next
            passwordTextField.returnKeyType = .done
            
        } else {
            // "Sign Up" is selected
            checkLabel.textColor = .black
            checkTextField.isEnabled = true
            
            accountTextField.returnKeyType = .next
            passwordTextField.returnKeyType = .next
            checkTextField.returnKeyType = .done
        }
    }
    
    func showAlert(title: String, text: String) {
        let alertController = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == accountTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            if segmentedControl.selectedSegmentIndex == 0 {
                view.endEditing(true)
            } else {
                checkTextField.becomeFirstResponder()
            }
        } else {
            view.endEditing(true)
        }
        return true
    }
}

