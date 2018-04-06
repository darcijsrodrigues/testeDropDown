//
//  CustonHeaderTableViewCell.swift
//  testeTableViewDropDown
//
//  Created by Fourtime on 06/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

protocol CustonHeaderTableViewCellDelegate {
    func toggleSection(header: CustonHeaderTableViewCell,section: Int)
}

class CustonHeaderTableViewCell: UITableViewHeaderFooterView {

    @IBOutlet weak var labelBenefit: UILabel!
    @IBOutlet weak var imageBenefit: UIImageView!
    
    var delegate: CustonHeaderTableViewCellDelegate?
    var section: Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selecteHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func selecteHeaderAction(gestureRecognizer: UITapGestureRecognizer){
        let cell = gestureRecognizer.view as! CustonHeaderTableViewCell
        delegate?.toggleSection(header: self, section: cell.section)
    }
    
    func customInit(title: String, section: Int, delegate: CustonHeaderTableViewCellDelegate){
//        self.textLabel?.text = title
        self.labelBenefit?.text = title
//        self.imageBenefit.image = image
        
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = UIColor.black
        self.contentView.backgroundColor = UIColor.white
    }
    
}
