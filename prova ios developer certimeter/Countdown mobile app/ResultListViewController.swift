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
    
    var test: [Subscibers] = [.init(login: "gianfrancioschio", avatar_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smashingmagazine.com%2F2016%2F05%2Fbetter-architecture-for-ios-apps-model-view-controller-pattern%2F&psig=AOvVaw36tzoIFgeWa_Dbh_7yiJYA&ust=1683643992269000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMiCz-L85f4CFQAAAAAdAAAAABAF")]

    override func viewDidLoad() {
        title = "subscribers"
        self.tableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultTableViewCell")
        tableView.separatorStyle = .none
    }
    
}

extension ResultListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell") as? ResultTableViewCell
        cell?.setup(immagine: UIImage(), nome: test[indexPath.row].login ?? "")
        return cell!
    }
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    
}
