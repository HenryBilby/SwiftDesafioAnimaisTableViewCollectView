//
//  AnimalCollectionViewCell.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagemView : UIImageView!
    @IBOutlet weak var nomeLabel : UILabel!
    
    public func configure (animal : Animal) {
        imagemView.image = UIImage(named: animal.imagem)
        nomeLabel.text = animal.name
    }

}
