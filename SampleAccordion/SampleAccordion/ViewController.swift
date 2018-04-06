//
//  ViewController.swift
//  SampleAccordion
//
//  Created by Fourtime on 05/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import AEAccordion

final class ViewController: AccordionTableViewController {

    @IBOutlet weak var _tableView: UITableView!
    
    private let benefits = ["LAZER","SAÚDE","PROFISSIONAL","GERAL"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
        expandFirstCell()
    }
    
    func registerCell(){
        let cellNib = UINib(nibName: SampleTableViewCell.reuseIdentifier, bundle:nil)
        tableView.register(cellNib, forCellReuseIdentifier: SampleTableViewCell.reuseIdentifier)
    }
    
    func expandFirstCell(){
        let firstCellIndexPath = IndexPath(row:0,section:0)
        expandedIndexPaths.append(firstCellIndexPath)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return benefits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SampleTableViewCell.reuseIdentifier, for: indexPath)
        
        if let cell = cell as? SampleTableViewCell{

            cell.titleBenefit.text = benefits[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return expandedIndexPaths.contains(indexPath) ? 200.0 : 50.0
    }

}

