//
//  ViewController.swift
//  Steal Phone Number
//
//  Created by Frederik Riedel on 3/4/18.
//  Copyright © 2018 Frederik Riedel. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let url = URL(string: "https://cap.telekom.de/auth?module=substore&subtempid=11100498&wt_mc=im_co_1842_0001_0001_1510306751")!
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("document.documentElement.outerHTML.toString()", completionHandler: { (html: Any?, error: Error?) in
            print(html)
        })
    }
}

