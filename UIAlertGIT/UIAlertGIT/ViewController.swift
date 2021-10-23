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
    
    //Add Action Sheet Button
    @IBAction func showActionSheet() {
        
        //Add Enum of Films
        enum Films:String{
            case film1 = "Amazing Spider Man"
            case film2 = "Upon time in Hollywood"
        }
        
        let alert = UIAlertController(title: nil, message: "Choose Film!", preferredStyle: .actionSheet)
        
        //Add Handler
        let handler:(_ type: Films) ->  (UIAlertAction) -> Void = {
            type in
            //do something
            return {
                //do something
                action in
                print(type.rawValue)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
        present(alert, animated: true, completion: nil)
        
    }
}

