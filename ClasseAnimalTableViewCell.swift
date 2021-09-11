//
//  ClasseAnimalTableViewCell.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import UIKit

class ClasseAnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var classeAnimalImageView : UIImageView!
    @IBOutlet weak var classeAnimalLabel : UILabel!
    
    public func configure (classeAnimal : ClasseAnimal) {

        classeAnimalImageView.image = UIImage(named: classeAnimal.imagem)
        classeAnimalLabel.text = classeAnimal.name

        switch classeAnimal.name {
            case "Peixes":
                classeAnimalLabel.textColor = UIColor.blue
            case "Anfibios":
                classeAnimalLabel.textColor = UIColor.green
            case "Répteis":
                classeAnimalLabel.textColor = UIColor.brown
            case "Aves":
                classeAnimalLabel.textColor = UIColor.orange
            case "Mamíferos":
                classeAnimalLabel.textColor = UIColor.red
            default:
                classeAnimalLabel.textColor = UIColor.black
        }
    }
}
