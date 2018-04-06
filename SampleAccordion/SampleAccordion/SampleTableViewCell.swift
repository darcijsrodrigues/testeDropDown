//
//  SampleTableViewCell.swift
//  SampleAccordion
//
//  Created by Fourtime on 05/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import AEAccordion

final class SampleTableViewCell: AccordionTableViewCell {

   static let reuseIdentifier = "SampleTableViewCell"
    
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var imageBenefit: UIImageView!
    @IBOutlet weak var titleBenefit: UILabel!
    @IBOutlet weak var arrow: UIImageView!{
        didSet{
            arrow.tintColor = UIColor.yellow
        }
    }
    
    @IBOutlet weak var detailView: UIView!
    
    override func setExpanded(_ expanded: Bool, animated: Bool) {
        super.setExpanded(expanded, animated: animated)
        
        if animated {
            let alwaysOptions: UIViewAnimationOptions = [.allowUserInteraction,
                                                         .beginFromCurrentState,
                                                         .transitionCrossDissolve]
            let expandedOptions: UIViewAnimationOptions = [.transitionFlipFromTop, .curveEaseOut]
            let collapsedOptions: UIViewAnimationOptions = [.transitionFlipFromBottom, .curveEaseIn]
            let options = expanded ? alwaysOptions.union(expandedOptions) : alwaysOptions.union(collapsedOptions)
            
            UIView.transition(with: detailView, duration: 0.3, options: options, animations: {
                self.toggleCell()
            }, completion: nil)
        } else {
            toggleCell()
        }
    }
    
    private func toggleCell(){
        detailView.isHidden = !expanded
        arrow.transform = expanded ? CGAffineTransform(rotationAngle: CGFloat.pi) : .identity        
    }
}
