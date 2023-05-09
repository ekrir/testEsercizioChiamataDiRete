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
    
    
    func setup (subscriber: Subscibers){
            let urlSession = URLSession.shared
            let url = URL(string: subscriber.avatar_url ?? "")

            guard let url = url else { return}
            let urlRequest = URLRequest(url: url)
            urlSession.dataTask(with: urlRequest){
                data, response, error in
                if let data = data, let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self.profileImageView.image = image
                        self.reloadInputViews()
                    }
                }
            }.resume()
        
        
        profileImageView.layer.cornerRadius = profileImageView.frame.width/2
        profileLabel.text = subscriber.login
    }
}
