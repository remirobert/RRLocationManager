//
//  ViewController.swift
//  RRGeoLoc
//
//  Created by Remi Robert on 11/05/15.
//  Copyright (c) 2015 Remi Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        self.presentViewController(RRLocationViewController(), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

