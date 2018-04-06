//
//  ViewController.swift
//  testeTableView
//
//  Created by Fourtime on 03/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
 
    @IBOutlet weak var tableView: UITableView!
    var signos:[Noticia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var noticia : Noticia
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Em Uberaba, “Sircom Itinerante” discute interesses dos profissionais", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        noticia = Noticia(data: "01 de Dezembro, 2017", descricao: "Sircom realiza comemoração do Dia Pan-americano do Representante Comercial", imagem: #imageLiteral(resourceName: "celpFoto"))
        signos.append(noticia)
        
        tableView.rowHeight = 321
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noticia: Noticia = signos[indexPath.row]
//        let celulaReuso = "celulaReuso"
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! CelulaHome
//
//        cell.labelData.text = noticia.data
//        cell.labelDescricao.text = noticia.descricao
//        cell.imageCelular.image = noticia.imagem
        
        let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
        cell.labelDataTV1.text = noticia.data
        cell.labelDescricaoTV1.text = noticia.descricao
        cell.imageTV1.image = noticia.imagem
        
        return cell
    }
}

