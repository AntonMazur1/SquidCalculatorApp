//
//  Creator.swift
//  squidCount
//
//  Created by Алексей on 26.07.2022.
//

import Foundation

struct Creator {
    let name: String
    let position: String
    let photo: String
    
    static func getEmployeDetails() -> [Creator] {
        [
            Creator(name: "Антон", position: "TeamLead", photo: "Антон"),
            Creator(name: "Илья", position: "Developer", photo: "Илья"),
            Creator(name: "Владимир", position: "Developer", photo: "Владимир"),
            Creator(name: "Сергей", position: "Developer", photo: "Сергей"),
            Creator(name: "Алексей", position: "Developer", photo: "Алексей")
        ]
    }
}
