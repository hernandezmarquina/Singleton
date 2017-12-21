//
//  SecondViewController.swift
//  Singleton
//
//  Created by Jonathan Hernandez on 12/21/17.
//  Copyright © 2017 Jonathan Hdez. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var singleton : SingletonTest?
    @IBOutlet weak var formView: FormViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Adding a click event to the button in xib flile.
        singleton = SingletonTest.getInstance()
        formView.updateButton.addTarget(self, action: #selector(self.updateButtonPressed(_:)), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateForm()
    }
    
    // Display current user data in the form.
    private func updateForm(){
        formView.userNameTextField.text = singleton?.user.name
        formView.userAgeTextField.text = "\(singleton?.user.age ?? 0)"
    }
    
    @objc private func updateButtonPressed(_ sender: UIButton){
        singleton?.user.name = formView.userNameTextField.text ?? "Default Name"
        singleton?.user.age = Int(formView.userAgeTextField.text!) ?? 0
    }
}
