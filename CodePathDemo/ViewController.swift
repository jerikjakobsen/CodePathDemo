//
//  ViewController.swift
//  CodePathDemo
//
//  Created by Jenafer Morton on 12/23/19.
//  Copyright © 2019 John Jakobsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TextLabel: UILabel!
    @IBOutlet var UserInput: UITextField!
    var backgroundColor: UIColor!
    var textColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
        textColor = TextLabel.textColor
    }

    @IBAction func DidTapButton(_ sender: Any) {
        print("Tapped!")
        TextLabel.textColor = UIColor.white
    }
    
    @IBAction func DidTapViewColor(_ sender: Any) {
        view.backgroundColor = UIColor.systemIndigo
    }
    @IBAction func DidTapTextString(_ sender: Any) {
        if UserInput.text == "" {
        
        TextLabel.text = "GoodBye World!"
        }
        else {
            TextLabel.text = UserInput.text
            UserInput.text = ""
            view.endEditing(true)
        }
        
    }
    @IBAction func ViewReset(_ sender: Any) {
        TextLabel.text = "Hello World!"
        view.backgroundColor = backgroundColor
        TextLabel.textColor = textColor
    }
}

