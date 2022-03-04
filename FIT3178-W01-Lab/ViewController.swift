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
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // the birthday should not exceed the current date
        birthDatePicker.maximumDate = Date()
        
    }
    
    func displayMessage(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default,handler: nil ))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func stringToDate(stringDate:String) -> Date?{
        // converts a string to a date object
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale.current
    
        guard let newDate = dateFormatter.date(from:stringDate) else {
            // return nil when the provided date is invalid
            return nil
        }
        
        return newDate
        
    }
    
    
    @IBAction func sayHello(_ sender: Any) {
        guard let name = nameField.text, name.isEmpty == false else{
            // name empty
            displayMessage(title: "Error", message: "Please enter a name")
            return
        }
        
         
//        guard let dateText = dateField.text, let myDate = stringToDate(stringDate: dateText), myDate != nil else {
        let myDate = birthDatePicker.date
        
            // Birthdate was not valid so print error and exit func
    
//        displayMessage(title: "Error", message: "Please enter a valid date of birth")
//

       let newPerson = Person(newName: name, newDate: myDate)
        displayMessage(title: "Hello", message: newPerson.greeting())
        return

    
        
    }
}

