//
//  AboutViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func navBackToAbout( _ seg: UIStoryboardSegue) {
        NSLog("Unwind")
    }
    
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToHome", sender: self)
     }
}
