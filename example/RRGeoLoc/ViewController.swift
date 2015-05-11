//
//  ViewController.swift
//  RRGeoLoc
//
//  Created by Remi Robert on 11/05/15.
//  Copyright (c) 2015 Remi Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lat: UILabel!
    @IBOutlet var long: UILabel!
    override func viewDidAppear(animated: Bool) {
        self.presentViewController(RRLocationViewController(), animated: true, completion: nil)
    }
    

    @IBAction func locate(sender: AnyObject) {
        RRLocationManager.currentLocation { (currentLocation, error) -> () in
            self.lat.text = "\(currentLocation?.coordinate.latitude)"
            self.long.text = "\(currentLocation?.coordinate.longitude)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

