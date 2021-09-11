//
//  Animal.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import Foundation

class Animal : ClasseAnimal {
    let curiosidade: String
        
    init(nome: String, imagem: String, curiosidade: String) {
        self.curiosidade = curiosidade
        super.init(name: nome, imagem: imagem)
    }
}
