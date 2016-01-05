//
//  NetClassroomViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/30/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class NetClassroomViewController: UIViewController, NSURLConnectionDelegate {
	
	private var request : NSURLRequest {
		let baseUrl = "http://netclassroom.sch.org/NetClassroom7/Forms/login.aspx"
		let URL = NSURL(string: baseUrl)!
		return NSURLRequest(URL: URL)
	}
	
	@IBOutlet var webView: UIWebView!
	
	
	@IBAction func dismiss(sender: AnyObject) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		_ = NSURLConnection(request: request, delegate: self, startImmediately: true)
	}
	
	
	func connection(connection: NSURLConnection,
		willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge){
			if challenge.protectionSpace.host == "miketokyo.com" {
				let user = "user"
				let password = "password"
				let credential = NSURLCredential(user: user, password: password, persistence: NSURLCredentialPersistence.ForSession)
				challenge.sender!.useCredential(credential, forAuthenticationChallenge: challenge)
			}
	}
	
	func connectionDidFinishLoading(connection: NSURLConnection!) {
		self.webView.loadRequest(request)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

