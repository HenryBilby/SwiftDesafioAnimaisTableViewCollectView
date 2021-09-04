//
//  AnimalCollectionViewCell.swift
//  Vertebrados
//
//  Created by Henry Bilby on 04/09/21.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagemView : UIImageView!
    @IBOutlet weak var nomeLabel : UILabel!
    
    var animal = Animal(tipo: .aves, nome: "", imagem: "", curiosidade: "")
    
    public func configure (animal : Animal) {
        imagemView.image = UIImage(named: animal.imagem)
        nomeLabel.text = animal.nome
        self.animal = animal
    }

}
