//
//  TableView.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class TableView: UITableView {
    
    let identifier: String = "TableCell"
    
    init() {
        super.init(frame: .zero, style: .plain)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        separatorStyle = .none
        register(TableCell.self, forCellReuseIdentifier: identifier)
    }
}
