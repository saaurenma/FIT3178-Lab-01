//
//  Person.swift
//  FIT3178-W01-Lab
//
//  Created by Saauren Mankad on 3/3/2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var birthDate: Date
    
    init(newName: String, newDate: Date){
        name = newName
        birthDate = newDate
    }
    
    func greeting() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let prettyDate = date.
        
        return "Hello " + name + ". You are " + String(age) + " years old!"
    }
    
}
