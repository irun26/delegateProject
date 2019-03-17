//
//  SecondViewController.swift
//  delegate
//
//  Created by Jimson Vedua on 3/17/19.
//  Copyright © 2019 SameTeam. All rights reserved.
//

import UIKit

@objc protocol secondViewControllerDelegate {
    func updateValues(str1: String, str2: String, str3: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblAge: UITextField!
    @IBOutlet weak var lblGender: UITextField!
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    var delegate: secondViewControllerDelegate?
    
    @IBAction func btnSave(_ sender: Any) {
        delegate?.updateValues(str1: lblName.text!, str2: lblAge.text!, str3: lblGender.text!)
       
        label2.text = "My name is \(lblName.text!), my age is \(lblAge.text!), and my gender is \(lblGender.text!)"
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
