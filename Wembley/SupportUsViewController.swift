//
//  SupportUsViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class SupportUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToAbout", sender: self)
     }
}
