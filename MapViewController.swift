//
//  MapViewController.swift
//  Wembley
//
//  Created by Macbook Pro on 09/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var stadLocMap: MKMapView!
    
    let locMan:CLLocationManager=CLLocationManager()
    
    func setMapToGround() {
        let lat = 51.55584
        let lon = -0.27946
        let centerRegion: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let spanRegion: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: centerRegion, span: spanRegion)
        stadLocMap.setRegion(mapRegion, animated: true)
    }
    
    override func viewDidLoad() {
        setMapToGround()
        super.viewDidLoad()
        self.locMan.requestWhenInUseAuthorization()
        // Do any additional setup after loading the view.
    }
}
