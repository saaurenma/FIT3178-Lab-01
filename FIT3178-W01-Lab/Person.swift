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
    
    func calculateAge(myDate: Date) -> Int {
        // calculates the age based on the birthdate provided.
        // returns age in years
        
        let myCalendar = Calendar.current
        let ageComponents = myCalendar.dateComponents([.year], from: myDate, to: Date())
                
        // return age
        return ageComponents.year!
        
    }
    
    
    func calculateDaysAlive(myDate: Date) -> Int {
        
        
        let myCalendar = Calendar.current
        let dayComponents = myCalendar.dateComponents([.day], from: myDate, to: Date())
        
        return dayComponents.day!
        
    }
    
    func greeting() -> String {
        
        // prepares and returns greeting for the Person initialised
        
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "dd/MM/yyyy"
        let prettyDate = formatter.string(from: birthDate)
        let age = calculateAge(myDate: birthDate)
        let daysAlive = calculateDaysAlive(myDate: birthDate)
        
        return "Hello \(name). You were born on \(prettyDate). This means you are \(age) years old. You have been alive for \(daysAlive) days."

    }
    
}
	
