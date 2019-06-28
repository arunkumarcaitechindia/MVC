//
//  ViewController.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let identifier: String = "TableCell"
    let heroes = Heroes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Avengers"
        tableView.register(TableCell.self, forCellReuseIdentifier: identifier)
        tableView.separatorStyle = .none
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Avengers.heroes.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TableCell
        cell.cellLabel.text = Avengers.heroesDescription[indexPath.section]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return TableHeaderView(title: Avengers.heroes[section])
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = SecondaryViewController(name: Avengers.heroes[indexPath.section], des: Avengers.heroesDescription[indexPath.section])
        navigationController?.pushViewController(controller, animated: true)
    }
}
