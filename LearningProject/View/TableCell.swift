//
//  TableCell.swift
//  LearningProject
//
//  Created by Anil Kumar on 27/06/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class TableCell: UITableViewCell {
    
    lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .preferredFont(forTextStyle: .body)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        selectionStyle = .none
        
        contentView.addSubview(cellLabel)
        
        let guide = contentView.layoutMarginsGuide
        let spacing: CGFloat = 10
        
        NSLayoutConstraint.activate([
            cellLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            cellLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: spacing),
            cellLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -spacing),
            cellLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -spacing)
            ])
        
    }
}
