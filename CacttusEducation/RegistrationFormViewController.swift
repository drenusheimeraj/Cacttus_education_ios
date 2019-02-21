//
//  RegistrationFormViewController.swift
//  CacttusEducation
//
//  Created by Drenushe Imeraj on 21/02/2019.
//  Copyright © 2019 Drenushe Imeraj. All rights reserved.
//

import UIKit

class RegistrationFormViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var aboutYouTextView: UITextView!
    @IBOutlet weak var secondProfilePictureImageView: UIImageView!
    @IBOutlet weak var profilePictureImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTextFieldsDelegates()
        profilePictureImageView.image = UIImage(named: "profilepic")
    }
    
    func setTextFieldsDelegates(){
        nameTextField.delegate = self
        emailTextField.delegate = self
        aboutYouTextView.delegate = self
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if(textView == aboutYouTextView){
            print("aboutYouTextView is active")
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField == nameTextField){
            print("nameTextField is active")
        }else if(textField == emailTextField){
            print("emailTextField is active")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == nameTextField){
            nameTextField.resignFirstResponder()
            emailTextField.becomeFirstResponder()
        }
        else if(textField == emailTextField){
            emailTextField.resignFirstResponder()
            aboutYouTextView.becomeFirstResponder()
        }
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
