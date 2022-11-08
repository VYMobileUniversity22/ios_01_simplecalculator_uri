//
//  ViewController.swift
//  ios_01_simplecalculator_uri
//
//  Created by josepL on 8/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var btnSuma: UIButton!
    @IBOutlet weak var btnResta: UIButton!
    @IBOutlet weak var lblResultat: UILabel!
    var num1:Int?
    var num2:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnActionSuma(_ sender: Any) {
        if checkTextFields(){
            let suma: Int = num1! + num2!
            lblResultat.text = "Resultat: \(String(suma))"
        }else{
            lblResultat.text = "Campos incorrectos"
        }
    }
    
    @IBAction func btnActionResta(_ sender: Any) {
        if checkTextFields(){
            let resta: Int = num1! - num2!
            lblResultat.text = "Resultat: \(String(resta))"
        }else{
            lblResultat.text = "Campos incorrectos"
        }
    }
    func checkTextFields () ->Bool{
//        text = descriptionLabel.text where !text.isEmpty
        guard let tf1 = tfNum1.text, !tf1.isEmpty,
              let tf2 = tfNum2.text, !tf2.isEmpty,
              let num1 = Int(tf1), num1 is Int,
              let num2 = Int(tf2), num2 is Int
        else{
            return false
        }
        passValues()
        return true
    }
    //Asigning the values with a previus check
    func passValues(){
        num1 = Int(tfNum1.text!)
        num2 = Int(tfNum2.text!)
    }

}

