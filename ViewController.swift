//
//  ViewController.swift
//  MyBusiness
//
//  Created by Rafael Salazar on 21/07/20.
//  Copyright © 2020 Rafael Salazar. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clicButton(_ sender: Any) {
        print("Button was pressed!")
        openMapForPlace()
    }
    
    func openMapForPlace() {

        //Set Mexico City's coordinates
        let latitude: CLLocationDegrees = 19.43
        let longitude: CLLocationDegrees = -99.17

        let regionDistance:CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Here We Are!!!"
        mapItem.openInMaps(launchOptions: options)
    }
    
}


