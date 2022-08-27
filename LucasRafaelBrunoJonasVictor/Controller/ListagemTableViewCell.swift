//
//  ListagemTableViewCell.swift
//  LucasRafaelBrunoJonasVictor
//
//  Created by Lucas Diogo on 23/08/22.
//

import UIKit

class ListagemTableViewCell: UITableViewCell {

    @IBOutlet weak var labelProblemName: UILabel!
    @IBOutlet weak var labelRecordDate: UILabel!
    
    func configure(with problem: Problem) {
        labelProblemName.text = problem.name
        labelRecordDate.text = problem.date
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
