//
//  ByTubeViewController.swift
//  Wembley
//
//  Created by Macbook Pro on 09/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit


class ByTubeViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navBackToTube( _ seg: UIStoryboardSegue) {
        NSLog("Unwind")
    }
    
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
}
