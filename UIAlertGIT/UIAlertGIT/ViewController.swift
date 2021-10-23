//
//  ViewController.swift
//  UIAlertGIT
//
//  Created by Vitalii Kryvoshapka on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Add Action Button
    @IBAction func actionShowAlert() {
        let alert = UIAlertController(title: "Photo Acces", message: "Do you allow to use yout photos", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet() {
        
        
    }
}

