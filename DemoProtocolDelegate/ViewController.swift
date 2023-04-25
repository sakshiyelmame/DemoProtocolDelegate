//
//  ViewController.swift
//  DemoProtocolDelegate
//
//  Created by Sakshi Yelmame on 24/04/23.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet weak var nameUILabel: UILabel!

    @IBOutlet weak var addressUILabel: UILabel!
    
    @IBOutlet weak var cityUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToFormButton(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
//    func dataPassing(name: String, address: String, city: String) {
//        nameUILabel.text = name
//        addressUILabel.text = address
//        cityUILabel.text = city
//    }
    
    func data(object: [String : String]) {
        nameUILabel.text = object["name"]
        addressUILabel.text = object["address"]
        cityUILabel.text = object["city"]
    }
}

