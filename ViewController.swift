//
//  ViewController.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 03/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vertebradosTableView: UITableView!
    
    var classeAnimais = [ClasseAnimal(tipo: .peixes, imagem: "peixe.jpg"),
                         ClasseAnimal(tipo: .anfibios, imagem: "anfibio.jpg"),
                         ClasseAnimal(tipo: .aves, imagem: "ave.jpg"),
                         ClasseAnimal(tipo: .repteis, imagem: "reptil.jpeg"),
                         ClasseAnimal(tipo: .mamiferos, imagem: "mamifero.jpeg")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        vertebradosTableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classeAnimais.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ClasseAnimalTableViewCell", for: indexPath) as? ClasseAnimalTableViewCell{

            cell.configure(classeAnimal: classeAnimais[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheClasseSegue" {
            if let segundaTelaViewController = segue.destination as? SegundaTelaViewController {
                if let cell = sender as? ClasseAnimalTableViewCell {
                    segundaTelaViewController.tipoAnimal = cell.tipoAnimal
                }
            }
        }
    }
}
