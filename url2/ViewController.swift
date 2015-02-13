//
//  ViewController.swift
//  url2
//
//  Created by Weldon Ruan on 15/2/12.
//  Copyright (c) 2015年 Weldon Ruan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //打开网页
        var uu  = NSURL(string: "http://map.baidu.com")
        var req = NSURLRequest(URL:uu!)
        wv!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

