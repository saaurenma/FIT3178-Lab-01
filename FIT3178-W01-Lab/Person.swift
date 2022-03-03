//
//  Person.swift
//  FIT3178-W01-Lab
//
//  Created by Saauren Mankad on 3/3/2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var age: Int
    
    init(newName: String, newAge: Int){
        name = newName
        age = newAge
    }
    
    func greeting() -> String {
        
        return "Hello " + name + ". You are " + String(age) + " years old!"
    }
    
}
