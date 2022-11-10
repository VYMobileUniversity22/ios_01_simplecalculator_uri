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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnActionSuma(_ sender: Any) {
//       print(checkTextFields(txtField: tfNum1))
        if let num1 = checkTextFields(txtField: tfNum1),
            let num2 = checkTextFields(txtField: tfNum2){
            lblResultat.text = "Resultat: \(String(num1+num2))"
        }
    }
    
    @IBAction func btnActionResta(_ sender: Any) {
        if let num1 = checkTextFields(txtField: tfNum1),
            let num2 = checkTextFields(txtField: tfNum2){
            lblResultat.text = "Resultat: \(String(num1-num2))"
        }
    }
    func checkTextFields (txtField : UITextField) ->Int?{
        guard let tf1 = txtField.text, !tf1.isEmpty,
              let num1 = Int(tf1)
        else{
            txtField.becomeFirstResponder()
            return nil
        }
        return num1
    }
}

