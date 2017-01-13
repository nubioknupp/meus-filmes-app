//
//  Filme.swift
//  MeusFilmes
//
//  Created by Nubio Knupp on 08/01/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit


public class Filme{
    var Titulo : String!;
    var Descricao : String!;
    var Imagem : UIImage;
    
    init(titulo : String, descricao : String, imagem : UIImage) {
        self.Titulo = titulo;
        self.Descricao = descricao;
        self.Imagem = imagem;
    }
    
}
