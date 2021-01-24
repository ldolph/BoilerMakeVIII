//
//  playlistViewController.swift
//  BoilerMakeVIII
//
//  Created by Lily Dolph and Tessa Dolph on 1/24/21.
//

import UIKit
import WebKit

class playlistViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var urls = [String]()
    let userDefaults = UserDefaults()

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        urls = userDefaults.value(forKey: "urlsNew") as! [String]

        var myURL = URL(string:"https://www.youtube.com/watch?v=y_5YFTvpQsM&ab_channel=TheBeardedProgrammer%22")
        
        
        let index = arc4random_uniform(4)
        myURL = URL(string: urls[Int(index)])! as URL
                
        let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)


    }
    
    

}
