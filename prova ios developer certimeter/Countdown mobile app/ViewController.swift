//
//  ViewController.swift
//  Countdown mobile app
//
//  Created by Michel Di Pietro on 08/05/23.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var CercaBtton: UIButton!
    @IBOutlet weak var repoTextField: UITextField!
    @IBOutlet weak var ownerTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        CercaBtton.layer.cornerRadius = CercaBtton.frame.height/2
        CercaBtton.layer.borderWidth = 2
        CercaBtton.layer.borderColor = UIColor.gray.cgColor
        title = "prima pagina"
        // Do any additional setup after loading the view.
    }

    @IBAction func continueTapped() {
        guard let repo = repoTextField.text, let owner = ownerTextField.text ,!repo.isEmpty, !owner.isEmpty else {
            return}

        let group = DispatchGroup()
        group.enter()
        
        var subscribersList: [Subscibers]?

        let urlSession = URLSession.shared
        let url = URL(string: "https://api.github.com/repos/\(owner)/\(repo)/subscribers")

        guard let url = url else { return}
        let urlRequest = URLRequest(url: url)
        urlSession.dataTask(with: urlRequest){
            data, response, error in
            if let data = data{
                subscribersList = try? JSONDecoder().decode([Subscibers].self, from: data)
                group.leave()
            }
        }.resume()

        
        group.notify(queue: .main){
            guard let subscribersList = subscribersList else {return}
            let myTableViewController = ResultListViewController()
            myTableViewController.subscribersList = subscribersList
            self.show(myTableViewController, sender: self)
        }
    }

}

