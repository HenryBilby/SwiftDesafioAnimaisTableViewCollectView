//
//  Animal.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 04/09/21.
//

import Foundation

class Animal {
    let tipo: Tipo
    let nome: String
    let imagem: String
    let curiosidade: String
        
    init(tipo: Tipo, nome: String, imagem: String, curiosidade: String) {
        self.tipo = tipo
        self.nome = nome
        self.imagem = imagem
        self.curiosidade = curiosidade
    }
}
