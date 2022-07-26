//
//  Creator.swift
//  squidCount
//
//  Created by Алексей on 26.07.2022.
//

import Foundation

struct Creator {
    let name: String
    let surname: String
    let position: String
    let photo: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getEmployeDetails() -> [Creator] {
        [
            Creator(name: "Антон", surname: "Фамилия", position: "TeamLead", photo: "Антон"),
            Creator(name: "Илья", surname: "Фамилия", position: "Developer", photo: "Илья"),
            Creator(name: "Владимир", surname: "Прощин",  position: "Developer", photo: "Владимир"),
            Creator(name: "Сергей", surname: "Фамилия", position: "Developer", photo: "Сергей"),
            Creator(name: "Алексей", surname: "Иванов", position: "Developer", photo: "Алексей")
        ]
    }
}
