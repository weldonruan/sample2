//
//  ViewController.swift
//  url2
//
//  Created by Weldon Ruan on 15/2/12.
//  Copyright (c) 2015年 Weldon Ruan. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    let locationManager:CLLocationManager = CLLocationManager()

    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        if(ios8()){
            locationManager.requestAlwaysAuthorization()
        } 
        locationManager.startUpdatingLocation()
        
        //打开网页
        var uu  = NSURL(string: "http://map.baidu.com")
        var req = NSURLRequest(URL:uu!)
        wv!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ios8() -> Bool{
        return UIDevice.currentDevice().systemVersion == "8.1"
    } 
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        var location:CLLocation = locations[locations.count - 1] as CLLocation
        if(location.horizontalAccuracy > 0){
            println(location.coordinate.latitude)
            println(location.coordinate.longitude)
            locationManager.stopUpdatingLocation()
        }
    }


}

