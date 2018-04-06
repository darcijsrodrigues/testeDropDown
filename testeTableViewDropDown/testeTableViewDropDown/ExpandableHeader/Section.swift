//
//  Section.swift
//  testeTableViewDropDown
//
//  Created by Fourtime on 06/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class Section {
    var imagem: UIImage!
    var typeBenefit: String!
    var listBenefits: [String]!
    var expanded: Bool!
    
    init(imagem: UIImage,typeBenefit: String, listBenefits: [String], expanded: Bool){
        self.imagem = imagem
        self.typeBenefit = typeBenefit
        self.listBenefits = listBenefits
        self.expanded = expanded
    }
}
