//
//  FormViewController.swift
//  Singleton
//
//  Created by Jonathan Hernandez on 12/21/17.
//  Copyright © 2017 Jonathan Hdez. All rights reserved.
//

import UIKit

class FormViewController: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userAgeTextField: UITextField!
    @IBOutlet weak var updateButton: UIButton!
    
    // For using FormView in code
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    // For using FormView in IB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit(){
        Bundle.main.loadNibNamed("FormView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
