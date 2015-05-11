//
//  RRLocationViewController.swift
//  RRGeoLoc
//
//  Created by Remi Robert on 11/05/15.
//  Copyright (c) 2015 Remi Robert. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class RRLocationViewController: UIViewController {

    lazy var navigationBar: UINavigationBar! = {
        let navBar = UINavigationBar()
        navBar.frame.origin = CGPointZero
        navBar.frame.size = CGSizeMake(UIScreen.mainScreen().bounds.size.width, 64)
        
        let navigationItems = UINavigationItem(title: "RRLocationController")
        navigationItems.rightBarButtonItems = [UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Search, target: self, action: ""),
            UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Save, target: self, action: "")]

        navigationItems.leftBarButtonItems = [UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "")]

        navBar.pushNavigationItem(navigationItems, animated: true)
        return navBar
    }()
    
    lazy var mapView: MKMapView! = {
        let mapView = MKMapView()
        mapView.frame.origin = CGPointZero
        mapView.frame.size = UIScreen.mainScreen().bounds.size
        return mapView
    }()
    
    lazy var searchBarController: UISearchController! = {
        let searchBar = UISearchController()
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.navigationBar)
        self.presentViewController(self.searchBarController, animated: true, completion: nil)
    }

}
