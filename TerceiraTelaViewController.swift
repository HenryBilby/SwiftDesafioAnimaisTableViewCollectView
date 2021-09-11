//
//  TerceiraTelaViewController.swift
//  Vertebrados
//
//  Created by Fred Nobre, Guilherme Feitosa, Lilian Garcia, Lucas Tamagnone e Henry Bilby on 03/09/21.
//

import UIKit

class TerceiraTelaViewController: UIViewController {

    var animal : Animal?
    
    @IBOutlet weak var labelTopoTitulo : UILabel!
    
    @IBOutlet weak var imageView : UIImageView!
    
    @IBOutlet weak var labelCuriosidade : UILabel!
    
    @IBOutlet weak var botaoVoltar : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTopoTitulo.text = animal?.name
        labelCuriosidade.text = animal?.curiosidade
        imageView.image = UIImage(named: animal?.imagem ?? "")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionBotaoVoltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
