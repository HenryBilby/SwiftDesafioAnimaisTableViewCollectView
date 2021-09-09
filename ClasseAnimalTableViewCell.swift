//
//  ClasseAnimalTableViewCell.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import UIKit

class ClasseAnimalTableViewCell: UITableViewCell {
    
    var tipoAnimal : Tipo = .aves
    
    @IBOutlet weak var classeAnimalImageView : UIImageView!
    @IBOutlet weak var classeAnimalLabel : UILabel!
    
    public func configure (classeAnimal : ClasseAnimal) {
        tipoAnimal = classeAnimal.tipo

        classeAnimalImageView.image = UIImage(named: classeAnimal.imagem)

        switch classeAnimal.tipo {
            case .peixes:
                classeAnimalLabel.text = "Peixes"
                classeAnimalLabel.textColor = UIColor.blue
            case .anfibios:
                classeAnimalLabel.text = "Anfibios"
                classeAnimalLabel.textColor = UIColor.green
            case .repteis:
                classeAnimalLabel.text = "Répteis"
                classeAnimalLabel.textColor = UIColor.brown
            case .aves:
                classeAnimalLabel.text = "Aves"
                classeAnimalLabel.textColor = UIColor.orange
            case .mamiferos:
                classeAnimalLabel.text = "Mamíferos"
                classeAnimalLabel.textColor = UIColor.red
        }
//        classeAnimalLabel.font = classeAnimalLabel.font.withSize(30)
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
