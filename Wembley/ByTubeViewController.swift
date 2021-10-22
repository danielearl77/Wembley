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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            case "tubeCentral":
                let sendStation = segue.destination as? LiveTubeViewController
                sendStation?.tubestation = "WMB"
            case "tubePark":
                let sendStation = segue.destination as? LiveTubeViewController
                sendStation?.tubestation = "WCX"
        case "backToHome":
                NSLog("Unwind")
            default:
                fatalError("Unexpected Segue Identifier: \(String(describing: segue.identifier))")
        }
        
    }    
}
