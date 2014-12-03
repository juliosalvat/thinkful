//
//  ContactInput.swift
//  Contacts
//
//  Created by able on 10/13/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import UIKit

protocol dataUpdated:NSObjectProtocol {
    
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
}

class ContactInput: UIViewController, UITextFieldDelegate {
    
    
    
    //Properties
    var name = ""
    var phoneNumber = ""
    var delegate: dataUpdated?
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.phoneField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    //Textfield delegates
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
      
        if textField.tag == 1 {
            
            self.name = textField.text
        }
            
        else {
            
            self.phoneNumber = textField.text
        }
  
         textField.resignFirstResponder()
        println("Name: \(self.name), Phone: \(self.phoneNumber)")
        
        
        return true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phoneNumber != "" {
            self.delegate!.didUpdateContact(self, aName: self.name, aPhoneNumber: self.phoneNumber)
        }
    }


}
