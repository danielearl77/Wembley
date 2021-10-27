//
//  AboutViewController.swift
//  Wembley
//
//  Created by Daniel Earl on 22/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutTextBox: UITextView!
    
    override func viewDidLoad() {
        let versionNumber = Bundle.main.infoDictionary!["CFBundleShortVersionString"]!
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "yyyy"
        let copyDate = dateFormatter.string(from: currentDate)
        
        let aboutText = "This app aims to provide travel information for fans travelling to events at Wembley Stadium.\n\nHelp keep this app free by leaving us a digital tip - tap the Support Us button.\n\nAll directions given in this app are taken from either maps or personal experience.  Please contact us if you think the directions are wrong, can provide clearer routes to the stadium, or have a recommendation for the food and drink section.  we are also happy to include your business so please get in touch.\n\nThis app is not affiliated with Wembley Stadium or the Football Association, and neither has provided any information for this app.  Stadium Information is linked from the www.wikipedia.org website.\n\nFor more information visit www.phone-app.co.uk\n\nCopyright (c) \(copyDate) Daniel Earl.\nVersion: \(versionNumber)"
        
        aboutTextBox.text = aboutText
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func navBackToAbout( _ seg: UIStoryboardSegue) {
        //NSLog("Unwind")
    }
    
     @IBAction func backBtn(_ sender: Any) {
         performSegue(withIdentifier: "backToHome", sender: self)
     }
}
