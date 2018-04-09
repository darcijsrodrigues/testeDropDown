//
//  TableHeader.swift
//  testeTableViewDropDown
//
//  Created by Fourtime on 09/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

protocol TableHeaderDelegate {
    func toggleSection(header: TableHeader,section: Int)
}

class TableHeader: UITableViewHeaderFooterView {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var arrowCell: UIImageView!
    var expansable: Bool!
    
    var delegate: TableHeaderDelegate?
    var section: Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selecteHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func selecteHeaderAction(gestureRecognizer: UITapGestureRecognizer){
        let cell = gestureRecognizer.view as! TableHeader
        delegate?.toggleSection(header: self, section: cell.section)
        arrowCell.rotate(.pi)
    }
    
    func customInit(image: UIImage, title: String, section: Int, delegate: TableHeaderDelegate){
        
        self.imageCell.image = image
        self.labelCell.text = title
        self.section = section
        self.delegate = delegate
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selecteHeaderAction)))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = UIColor.black
        self.contentView.backgroundColor = UIColor.white
    }
}

extension UIView {
    func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.2) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        
        animation.toValue = toValue
        animation.duration = duration
        animation.isRemovedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        
        self.layer.add(animation, forKey: nil)
    }
}
