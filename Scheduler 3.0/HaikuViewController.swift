//
//  HaikuViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 12/17/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class HaikuViewController: UIViewController {
	
	private var request : NSURLRequest {
		let baseUrl = "https://schacademy.haikulearning.com/do/account/login"
		let URL = NSURL(string: baseUrl)!
		return NSURLRequest(URL: URL)
	}
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
        // Do any additional setup after loading the view.
    }
	
	
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
	}
}
