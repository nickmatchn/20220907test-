//
//  ViewController.swift
//  20220907test
//
//  Created by 森川柏旭 on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodmoney: UITextField!
    @IBOutlet weak var peopleage: UITextField!
    @IBOutlet weak var onepeopletext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerbutton(_ sender: Any) {
        let food = Double(foodmoney.text!)
        let people = Double(peopleage.text!)
        if food != nil,people != nil{
            let onepeople = food! / people!
            onepeopletext.text = String(format: "%.2f",onepeople )
            view.endEditing(true)
        }
    }
    @IBAction func cancelbutton(_ sender: Any) {
        foodmoney.text = ""
        peopleage.text = ""
        onepeopletext.text = ""
        
        
    }
    
}

