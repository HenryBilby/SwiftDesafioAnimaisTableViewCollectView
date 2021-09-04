//
//  SegundaTelaViewController.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 03/09/21.
//

import UIKit

class SegundaTelaViewController: UIViewController {
    
    var tipoAnimal : Tipo = .aves
    var animais : [Animal] = []
    
    @IBOutlet weak var classeLabelTopo: UILabel!
    @IBOutlet weak var animaisCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animaisCollectionView.dataSource = self
        
        setCaracteristicasLabelTopo()
        self.animais = getAnimaisPorTipo()
    }
    
    private func setCaracteristicasLabelTopo(){
        switch self.tipoAnimal {
            case .peixes:
                classeLabelTopo.text = "Peixes"
                classeLabelTopo.textColor = UIColor.blue
            case .anfibios:
                classeLabelTopo.text = "Anfibios"
                classeLabelTopo.textColor = UIColor.green
            case .repteis:
                classeLabelTopo.text = "Répteis"
                classeLabelTopo.textColor = UIColor.brown
            case .aves:
                classeLabelTopo.text = "Aves"
                classeLabelTopo.textColor = UIColor.orange
            case .mamiferos:
                classeLabelTopo.text = "Mamíferos"
                classeLabelTopo.textColor = UIColor.red
        }
    }

    private func getAnimaisPorTipo() ->[Animal]{
        var animaisPorTipo:[Animal] = []
        
        //Fazer request a uma API restfull com base no tipoAnimal
        
        
        var tipo = ""
        var imagem = ""
        switch self.tipoAnimal {
            case .peixes:
                tipo = "Peixe"
                imagem = "peixe.jpg"
            case .anfibios:
                tipo = "Anfibio"
                imagem = "anfibio.jpg"
            case .repteis:
                tipo = "Réptil"
                imagem = "reptil.jpeg"
            case .aves:
                tipo = "Ave"
                imagem = "ave.jpg"
            case .mamiferos:
                tipo = "Mamífero"
                imagem = "mamifero.jpeg"
        }
        
        for n in 1...10 {
            let animal = Animal(tipo: self.tipoAnimal,
                                nome: "\(tipo) \(n)",
                                imagem: imagem,
                                curiosidade: "\(tipo) encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria()).")
            animaisPorTipo.append(animal)
        }
        
        return animaisPorTipo
    }
    
    private func getPaisAleatorio() -> String {
        let paises = ["Guatemala",
                      "Sudão",
                      "Etiópia",
                      "Jamaica",
                      "Síria",
                      "Sri Lanka",
                      "Mongolia",
                      "Macau",
                      "Filipinas",
                      "Nepal"]
        let number = Int(arc4random_uniform(UInt32(paises.count)))
        return paises[number]
    }
    
    private func getEstacaoAleatoria() -> String {
        let estacoes = ["Verão", "Primavera", "Outono", "Inverno"]
        let number = Int(arc4random_uniform(UInt32(estacoes.count)))
        return estacoes[number]
    }
    
}

extension SegundaTelaViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.animais.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCollectionViewCell", for: indexPath) as? AnimalCollectionViewCell {
            cell.configure(animal: animais[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheAnimalSegue" {
            if let terceiraTelaViewController = segue.destination as? TerceiraTelaViewController {
                if let cell = sender as? AnimalCollectionViewCell {
                    terceiraTelaViewController.animal = cell.animal
                }
            }
        }
    }
    
}
