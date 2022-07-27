//
//  CreatorsListViewController.swift
//  squidCount
//
//  Created by Алексей on 26.07.2022.
//

import UIKit

class CreatorsListViewController: UITableViewController {
    
    private let creators = Creator.getEmployeDetails()
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        creators.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "creator") as? CustomTableViewCell else { return UITableViewCell() }
        
        
        let creator = creators[indexPath.row]
        cell.avatarImage.image = UIImage(named: creator.photo)
        cell.nameLabel.text = creator.fullName
        cell.positionLabel.text = creator.position
        cell.avatarImage.layer.cornerRadius = (cell.avatarImage.frame.size.height) / 2
        
        return cell
    }
}
