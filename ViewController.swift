//
//  ViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 06/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds
import StoreKit

class ViewController: UIViewController {

    @IBOutlet weak var adViewHomePage: GADBannerView!
    let kReviewed = "hasReviewed"

    
    func fireUserReviewRequest() {
        let kBuildVersion = "buildVersion"
        let userDefaults: UserDefaults = UserDefaults.standard
        let infoDictionaryKey = kCFBundleVersionKey as String
        guard let getCurrentVersion = Bundle.main.object(forInfoDictionaryKey: infoDictionaryKey) as? String
            else { fatalError("Expected to find a bundle version in the info dictionary") }
        let currentVersion = Int(getCurrentVersion)
        let lastVersionPromptedForReview = userDefaults.integer(forKey: kBuildVersion)
        if currentVersion != lastVersionPromptedForReview {
            SKStoreReviewController.requestReview()
            userDefaults.set(currentVersion, forKey: kBuildVersion)
            userDefaults.set(2, forKey: kReviewed)
            userDefaults.synchronize()
        }
    }
    
    
    func getReview() {
        let kLaunchCount = "launchCounter"
        let userDefaults: UserDefaults = UserDefaults.standard
        let count = userDefaults.integer(forKey: kLaunchCount)
        if count > 4 {
            let review = userDefaults.integer(forKey: kReviewed)
            if review != 2 {fireUserReviewRequest()}
        }
    }
    
    
    override func viewDidLoad() {
        adViewHomePage.adUnitID = "ca-app-pub-1798485712270431/7806134308"
        adViewHomePage.rootViewController = self
        adViewHomePage.load(GADRequest())
        super.viewDidLoad()
        getReview()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

