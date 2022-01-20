//
//  ViewController.swift
//  add_sample_imperative_ui
//
//  Created by Satoru on 2022/01/20.
//

import UIKit

class AppManager: ObservableObject {
    func add(textField1: UITextField!, textField2: UITextField!, labelAnswer: UILabel!) {
        guard let int1 = Int(textField1.text!) else {
           return
        }
        guard let int2 = Int(textField2.text!) else {
           return
        }
        labelAnswer.text = String(int1 + int2)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!
    let appManager = AppManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTouched(_ sender: UIButton) {
        appManager.add(textField1: textField1, textField2: textField2, labelAnswer: labelAnswer)
    }
    
}

