//
//  SecondViewController.swift
//  DemoProtocolDelegate
//
//  Created by Sakshi Yelmame on 24/04/23.
//

import UIKit
protocol DataPass {
   // func dataPassing(name: String, address: String, city: String)
    func data(object:[String:String])
}
class SecondViewController: UIViewController {

    @IBOutlet weak var nameUITextField: UITextField!
    
    @IBOutlet weak var addressUITextField: UITextField!
    
    @IBOutlet weak var cityUITextField: UITextField!
    
    var delegate: DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        if nameUITextField.text == "" {
            alert(vc: self, title: "Enter Name", message: "")
        }else  if addressUITextField.text == "" {
            alert(vc: self, title: "Enter Address", message: "")
        }else  if cityUITextField.text == "" {
            alert(vc: self, title: "Enter City", message: "")
        }else {
           // delegate.dataPassing(name: nameUITextField.text!, address: addressUITextField.text!, city: cityUITextField.text!)
            let dict:[String:String] = ["name": nameUITextField.text!, "address": addressUITextField.text!, "city": cityUITextField.text!]
            delegate.data(object: dict)
        }
    }
    
    func alert (vc : UIViewController, title: String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }

}
