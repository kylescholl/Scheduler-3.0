//
//  ViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("viewDidLoad()")
	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		let flatButton = FUIButton(frame: CGRectMake(166, 323, 280, 40))
		flatButton.layer.cornerRadius = 10
		flatButton.setTitle("Sign In", forState: UIControlState.Normal)
		flatButton.setTitleColor(UIColor.wetAsphaltColor(), forState: UIControlState.Normal)
		flatButton.titleLabel!.font = UIFont(name:"Avenir-Black", size: 20.0)
		//flatButton.addTarget(self, action: "flatButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
		self.view.addSubview(flatButton)
	}
	
	func flatButtonPressed(sender:  AnyObject) {
		NSLog("flatButtonPressed")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

