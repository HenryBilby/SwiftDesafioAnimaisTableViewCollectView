//
//  SegundaTelaViewController.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 03/09/21.
//

import UIKit

class SegundaTelaViewController: UIViewController {
    
    var classAnimalName : String?
    var animais : [Animal] = []
    
    @IBOutlet weak var classeLabelTopo: UILabel!
    @IBOutlet weak var animaisCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animaisCollectionView.dataSource = self
        animaisCollectionView.delegate = self
        
        setCaracteristicasLabelTopo()
        setAnimaisPorTipo()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheAnimalSegue" {
            if let terceiraTelaViewController = segue.destination as? TerceiraTelaViewController {
                if let animal = sender as? Animal {
                    terceiraTelaViewController.animal = animal
                }
            }
        }
    }

    private func setCaracteristicasLabelTopo(){
        classeLabelTopo.text = self.classAnimalName
        
        switch self.classAnimalName {
            case "Peixes":
                classeLabelTopo.textColor = UIColor.blue
            case "Anfibios":
                classeLabelTopo.textColor = UIColor.green
            case "Répteis":
                classeLabelTopo.textColor = UIColor.brown
            case "Aves":
                classeLabelTopo.textColor = UIColor.orange
            case "Mamíferos":
                classeLabelTopo.textColor = UIColor.red
            default:
                classeLabelTopo.textColor = UIColor.black
        }
    }

    private func setAnimaisPorTipo(){
        switch self.classAnimalName {
            case "Peixes":
                setPeixesToAnimais()
            case "Anfibios":
                setAnfibiosToAnimais()
            case "Répteis":
                setRepteisToAnimais()
            case "Aves":
                setAvesToAnimais()
            case "Mamíferos":
                setMamiferosToAnimais()
            default:
                print("LOG - SegundaTelaViewController - setAnimaisPorTipo() - default case acessed")
        }
    }

    private func setPeixesToAnimais() {
        self.animais = [
            Animal(nome: "Peixe 1", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 2", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 3", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 4", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 5", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 6", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 7", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 8", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 9", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Peixe 10", imagem: "peixe.jpg", curiosidade: "Peixe encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria()).")]
    }

    private func setAnfibiosToAnimais() {
        self.animais = [
            Animal(nome: "Anfibio 1", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 2", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 3", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 4", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 5", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 6", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 7", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 8", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 9", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Anfibio 10", imagem: "anfibio.jpg", curiosidade: "Anfibio encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria()).")]
    }

    private func setRepteisToAnimais() {
        self.animais = [
            Animal( nome: "Réptil 1", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 2", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 3", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 4", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 5", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 6", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 7", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 8", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 9", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal( nome: "Réptil 10", imagem: "reptil.jpeg", curiosidade: "Réptil encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria()).")]
    }

    private func setAvesToAnimais() {
        self.animais = [
            Animal(nome: "Ave 1", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 2", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 3", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 4", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 5", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 6", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 7", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 8", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 9", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Ave 10", imagem: "ave.jpg", curiosidade: "Ave encontrada somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria()).")]
    }

    private func setMamiferosToAnimais() {
        self.animais = [
            Animal(nome: "Mamifero 1", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 2", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 3", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 4", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 5", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 6", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 7", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 8", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 9", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
            Animal(nome: "Mamifero 10", imagem: "mamifero.jpeg", curiosidade: "Mamifero encontrado somente no país \(getPaisAleatorio()) na estação \(getEstacaoAleatoria())."),
        ]
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
}

extension SegundaTelaViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //o performSegue faz um call interno para o método prepare()
        performSegue(withIdentifier: "detalheAnimalSegue", sender: self.animais[indexPath.row])
    }
}
