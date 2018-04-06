//
//  ViewController.swift
//  testeTableViewDropDown
//
//  Created by Fourtime on 06/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var sections = [
        Section( imagem: #imageLiteral(resourceName: "iconeBolaLazer"), typeBenefit: "LAZER", listBenefits: ["Convênio com o clube Celp (localizado em BH/MG)","Sesc: parceria com desconto"], expanded: false),
        Section( imagem: #imageLiteral(resourceName: "iconeBolaSaude"), typeBenefit: "SAÚDE", listBenefits: ["Convênio com o clube Celp (localizado em BH/MG)","Sesc: parceria com desconto"], expanded: false),
        Section( imagem: #imageLiteral(resourceName: "iconeBolaProfissional"), typeBenefit: "PROFISSIONAL", listBenefits: ["Convênio com o clube Celp (localizado em BH/MG)","Sesc: parceria com desconto"], expanded: false),
        Section( imagem: #imageLiteral(resourceName: "iconeBolaGeral"),typeBenefit: "GERAL", listBenefits: ["Convênio com o clube Celp (localizado em BH/MG)","Sesc: parceria com desconto"], expanded: false),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let headerNib = UINib.init(nibName:"CustomHeaderView", bundle: Bundle.main)
        tableView.register(headerNib, forCellReuseIdentifier: "CustomHeaderView")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableview: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].listBenefits.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if ( sections[indexPath.section].expanded){
            return 44
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = ExpandableHeaderView()
//        header.customInit(title: sections[section].typeBenefit, section: section, delegate: self)
//
//        return header
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomHeaderView") as! CustomHeaderView
        
        headerView.imageCell.image = sections[section].imagem
        headerView.labelCell.text = sections[section].typeBenefit
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellLabel", for: indexPath) as! cellBenefit
        cell.lblCellBenefit?.text = sections[indexPath.section].listBenefits[indexPath.row]
        
        return cell
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        tableView.beginUpdates()
        for i in 0 ..< sections[section].listBenefits.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
}

