//
//  ClasseAnimal.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import Foundation

enum Tipo {
    case peixes
    case anfibios
    case repteis
    case mamiferos
    case aves
}

class ClasseAnimal {
    let tipo: Tipo
    let imagem: String
    
    init(tipo: Tipo, imagem: String) {
        self.tipo = tipo
        self.imagem = imagem
    }
}
