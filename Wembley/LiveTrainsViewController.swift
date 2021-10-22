//
//  LiveTrainsViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit
import WebKit

class LiveTrainsViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var WebView: WKWebView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    var station = ""
    
    func loadStationData() {
        errorText.text = "Loading..."
        var stationURL = "http://m.nationalrail.co.uk/pj/ldbboard/dep/"
        stationURL.append(station)
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
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToTrain", sender: self)
     }
}
