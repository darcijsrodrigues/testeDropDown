//
//  Noticia.swift
//  testeTableView
//
//  Created by Fourtime on 03/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class Noticia {
    var data: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(data: String,descricao: String, imagem: UIImage) {
        self.data = data
        self.descricao = descricao
        self.imagem = imagem
    }
}
