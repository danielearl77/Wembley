//
//  SupportUsViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class SupportUsViewController: UIViewController {

    @IBOutlet weak var ProductTitle: UILabel!
    @IBOutlet weak var ProductDetail: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    @IBOutlet weak var ProductPurchaseBtn: UIButton!
    @IBOutlet weak var IAPLoadingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToAbout", sender: self)
     }
}
