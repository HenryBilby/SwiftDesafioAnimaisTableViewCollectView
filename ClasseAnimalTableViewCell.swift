//
//  ClasseAnimalTableViewCell.swift
//  Vertebrados
//
//  Created by Henry Bilby on 04/09/21.
//

import UIKit

class ClasseAnimalTableViewCell: UITableViewCell {
    
    var tipoAnimal : Tipo = .aves
    
    public func configure (classeAnimal : ClasseAnimal) {
        tipoAnimal = classeAnimal.tipo

        self.imageView?.image = UIImage(named: classeAnimal.imagem)

        switch classeAnimal.tipo {
            case .peixes:
                self.textLabel?.text = "Peixes"
                self.textLabel?.textColor = UIColor.blue
            case .anfibios:
                self.textLabel?.text = "Anfibios"
                self.textLabel?.textColor = UIColor.green
            case .repteis:
                self.textLabel?.text = "Répteis"
                self.textLabel?.textColor = UIColor.brown
            case .aves:
                self.textLabel?.text = "Aves"
                self.textLabel?.textColor = UIColor.orange
            case .mamiferos:
                self.textLabel?.text = "Mamíferos"
                self.textLabel?.textColor = UIColor.red
        }
        self.textLabel?.font = textLabel?.font.withSize(30)
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
