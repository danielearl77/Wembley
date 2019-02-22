//
//  ByTubeViewController.swift
//  Wembley
//
//  Created by Macbook Pro on 09/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ByTubeViewController: UIViewController {

    @IBOutlet weak var byTubeAdView: GADBannerView!
    
    override func viewDidLoad() {
        byTubeAdView.adUnitID = "ca-app-pub-1798485712270431/7806134308"
        byTubeAdView.rootViewController = self
        byTubeAdView.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
