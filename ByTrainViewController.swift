//
//  ByTrainViewController.swift
//  Wembley
//
//  Created by Macbook Pro on 09/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ByTrainViewController: UIViewController {

    @IBOutlet weak var byTrainAdView: GADBannerView!
    
    override func viewDidLoad() {
        byTrainAdView.adUnitID = "ca-app-pub-xxx/xxx"
        byTrainAdView.rootViewController = self
        byTrainAdView.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
