//
//  FirstViewController.swift
//  delegate
//
//  Created by Jimson Vedua on 3/17/19.
//  Copyright © 2019 SameTeam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, secondViewControllerDelegate {
    
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBAction func btnNext(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            controller.delegate = self
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func updateValues(str1: String, str2: String, str3: String) {
        labelDescription.text = "My name is \(str1), my age is \(str2), and my gender is \(str3)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
