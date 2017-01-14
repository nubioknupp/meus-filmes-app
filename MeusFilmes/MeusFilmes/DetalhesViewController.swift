//
//  DetalhesViewController.swift
//  MeusFilmes
//
//  Created by Nubio Knupp on 14/01/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoTextView: UITextView!
    
    var filme : Filme!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.Imagem;
        tituloLabel.text = filme.Titulo;
        descricaoTextView.text = filme.Descricao;
    }

}
