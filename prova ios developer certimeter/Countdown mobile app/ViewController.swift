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
        print("bottone tappato")
        //guard let repo = repoTextField.text, let owner = ownerTextField.text ,!repo.isEmpty, !owner.isEmpty else {
            //print("repo vuota")
            //return}
        /*
        let storiboard = UIStoryboard(name: "Main", bundle: nil)
        let vic = storiboard.instantiateViewController(withIdentifier: "test") as! test
        vic.modalPresentationStyle = .fullScreen
        UINavigationController(rootViewController: vi)
        var embeddedInNavigationController: UINavigationController {
            let navigationController = NavigationController(rootViewController: self)
            navigationController.theme = .default
            navigationController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            navigationController.customizeForDefaultAppearance()
            return navigationController
        }
        
        
                
        self.navigationController?.present(vic., animated: true, completion: nil)
*/
        let myTableViewController = ResultListViewController()

        
        self.show(myTableViewController, sender: self)

        //self.navigationController?.present(navigationController, animated: true)
        //present(navigationController, animated: true ,completion: nil)
            }

}

