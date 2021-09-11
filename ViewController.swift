//
//  ViewController.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 03/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vertebradosTableView: UITableView!
    
    var classeAnimais = [ClasseAnimal(name: "Peixes", imagem: "peixe.jpg"),
                         ClasseAnimal(name: "Anfibios", imagem: "anfibio.jpg"),
                         ClasseAnimal(name: "Aves", imagem: "ave.jpg"),
                         ClasseAnimal(name: "Répteis", imagem: "reptil.jpeg"),
                         ClasseAnimal(name: "Mamíferos", imagem: "mamifero.jpeg")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        vertebradosTableView.dataSource = self
        vertebradosTableView.delegate = self
        self.navigationItem.title = "Animais Vertebrados"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheClasseSegue" {
            if let segundaTelaViewController = segue.destination as? SegundaTelaViewController {
                if let cell = sender as? ClasseAnimalTableViewCell {
                    segundaTelaViewController.classAnimalName = cell.classeAnimalLabel.text
                }
            }
        }
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
}
