//
//  WebViewController.swift
//  Deepr
//
//  Created by DegawaIkuo on 7/2/16.
//  Copyright © 2016 ikuwow. All rights reserved.
//

import UIKit
import Social

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    private let hostname: String = "http://47.89.23.203:3000/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.title = "Deepr!"
        
        // BarButtonItemを作成する.
        let shareButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Action, target: self, action: #selector(WebViewController.shareButtonTapped(_:)))
        
        // Barの左側に配置する.
        self.navigationItem.setRightBarButtonItem(shareButtonItem, animated: true)
        
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let message = appDelegate.messenger
        
        var freeword = "";
        switch message! {
        case 0:
            freeword = "ラーメン"
        case 1:
            freeword = "ステーキ"
        case 2:
            freeword = "寿司"
        case 3:
            freeword = "スイーツ"
        default:
            break
        }
        print(freeword)
        let requestURL = NSURL(string: self.hostname + "#/eat?freeword=" + freeword.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())! + "&lat=35.660617&lng=139.733686")
        let req = NSURLRequest(URL: requestURL!)
        webView.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func shareButtonTapped (sender: UIButton) {
        var shareText = self.webView.stringByEvaluatingJavaScriptFromString("document.title")!
        shareText += " " + self.webView.stringByEvaluatingJavaScriptFromString("location.href")!
        
        let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        composeViewController.setInitialText(shareText)
        
        self.presentViewController(composeViewController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
