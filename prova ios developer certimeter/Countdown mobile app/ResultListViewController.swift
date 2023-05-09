//
//  ResultListViewController.swift
//  Countdown mobile app
//
//  Created by Michel Di Pietro on 08/05/23.
//

import Foundation
import UIKit

class  ResultListViewController: UITableViewController{
    var owner: String = ""
    var repo: String = ""
    var subscribersList: [(Subscibers, UIImage)]?
    
    

    override func viewDidLoad() {
        
        self.tableView.dataSource = self
        title = "subscribers"
        self.tableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultTableViewCell")
        tableView.separatorStyle = .none
    }
    
}

extension ResultListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let subscribersList = subscribersList else {return 0}
        return subscribersList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell") as? ResultTableViewCell
        cell?.setup(immagine: subscribersList?[indexPath.row].1 ?? UIImage(), nome: subscribersList?[indexPath.row].0.login ?? "")
        return cell!
    }
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    
}
