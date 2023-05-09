//
//  ResultTableViewCell.swift
//  Countdown mobile app
//
//  Created by Michel Di Pietro on 08/05/23.
//

import Foundation
import UIKit
class ResultTableViewCell: UITableViewCell{

    
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    func setup (immagine: UIImage, nome: String){
        profileImageView.image = immagine
        
        profileLabel.text = nome
    }
}
