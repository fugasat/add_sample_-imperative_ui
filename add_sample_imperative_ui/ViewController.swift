//
//  ViewController.swift
//  add_sample_imperative_ui
//
//  Created by Satoru on 2022/01/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTouched(_ sender: UIButton) {
        guard let int1 = Int(textField1.text!) else {
           return
        }
        guard let int2 = Int(textField2.text!) else {
           return
        }
        labelAnswer.text = String(int1 + int2)
    }
    
}

