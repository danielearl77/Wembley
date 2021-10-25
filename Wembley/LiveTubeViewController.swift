//
//  LiveTubeViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit
import WebKit

class LiveTubeViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var WebView: WKWebView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var loadingSpinner: UILabel!
    @IBOutlet weak var browserBackBtn: UIButton!
    
    var tubestation = ""
    
    func loadStationData() {
        errorText.text = "Loading..."
        var stationURL = "https://tfl.gov.uk/tube/stop/940GZZLUWYP/wembley-park-underground-station/?Input="
        stationURL.append(tubestation)
        let myURL = URL(string: stationURL)
        let myRequest = URLRequest(url: myURL!)
        WebView.load(myRequest)
    }
    
    override func viewDidLoad() {
        WebView.navigationDelegate = self
        super.viewDidLoad()
        loadStationData()
        // Do any additional setup after loading the view.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        errorView.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        errorText.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        errorText.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
    

    // MARK: - Navigation
    @IBAction func browserBack(_ sender: Any) {
    }
    
    
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToTube", sender: self)
     }
}
