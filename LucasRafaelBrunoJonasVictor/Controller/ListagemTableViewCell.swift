//
//  ListagemTableViewCell.swift
//  LucasRafaelBrunoJonasVictor
//
//  Created by Lucas Diogo on 23/08/22.
//

import UIKit

class ListagemTableViewCell: UITableViewCell {

    @IBOutlet weak var dataProblema: UILabel!
    @IBOutlet weak var tituloProblema: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
