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
            Creator(
                name: "Anton",
                surname: "Фамилия",
                position: "TeamLead",
                photo: "Anton"
            ),
            Creator(
                name: "Ilya",
                surname: "Sesyunin",
                position: "Developer",
                photo: "Ilya"
            ),
            Creator(
                name: "Vladimir",
                surname: "Proshchin",
                position: "Developer",
                photo: "Vladimir"
            ),
            Creator(
                name: "Sergey",
                surname: "Фамилия",
                position: "Developer",
                photo: "Sergey"
            ),
            Creator(
                name: "Aleksey",
                surname: "Ivanov",
                position: "Developer",
                photo: "Aleksey"
            )
        ]
    }
}
