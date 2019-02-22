//
//  ByRoadViewController.swift
//  Wembley
//
//  Created by Macbook Pro on 09/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ByRoadViewController: UIViewController {

    @IBOutlet weak var byRoadAdView: GADBannerView!
    
    override func viewDidLoad() {
        byRoadAdView.adUnitID = "ca-app-pub-1798485712270431/7806134308"
        byRoadAdView.rootViewController = self
        byRoadAdView.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
