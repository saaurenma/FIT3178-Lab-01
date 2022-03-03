//
//  ViewController.swift
//  FIT3178-W01-Lab
//
//  Created by Saauren Mankad on 3/3/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func displayMessage(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default,handler: nil ))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func sayHello(_ sender: Any) {
        guard let name = nameField.text, name.isEmpty == false else{
            displayMessage(title: "Error", message: "Please enter a name")
            return
        }
        
        guard let ageText = dateField.text, let age = Int(ageText) else {
            // Age could not be established so print error and exit func
            displayMessage(title: "Error", message: "Please enter a valid age")
            return
        }
        
       // let newPerson = Person(newName: name, newAge: age)
        //displayMessage(title: "Hello", message: newPerson.greeting())
        return

    
        
    }
}

