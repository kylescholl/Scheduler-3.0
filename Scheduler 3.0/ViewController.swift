//
//  ViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var showScheduleButton: UIButton!
	@IBOutlet var netClassroomButton: UIButton!
	
	@IBOutlet var orangeButton: UIButton!
	@IBOutlet var carrotButton: UIButton!
	@IBOutlet var pumpkinButton: UIButton!
	@IBOutlet var greenSeaButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("viewDidLoad()")
		
		/*
		let bool = true
		if bool.boolValue == true {
			orangeButton.hidden = true
			carrotButton.hidden = true
			pumpkinButton.hidden = true
			greenSeaButton.hidden = true
			
			print("color buttons hidden")
		}
*/
	}
	
	func setButtonStyles() {
		
		// Schedule
		let ssb = showScheduleButton
		
		//ssb.backgroundColor = UIColor.orangeColor()
		
		ssb.layer.cornerRadius = 10.0
		ssb.tag = 2
		
		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		//ssb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		// NetClassroom
		let ncb = netClassroomButton
		
		//ncb.backgroundColor = UIColor.orangeColor()
		
		ncb.layer.cornerRadius = 10.0
		ncb.tag = 2
		
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		//ncb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ncb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		
		let custom = CGRectMake(0, 362, 375, 5)
		
		let whiteLine = UIView(frame: custom)
		whiteLine.backgroundColor = UIColor.cloudsColor()
		//self.view.addSubview(whiteLine)
	}
	
	
	
	







	@IBAction func showScheduleButtonPressed(sender: UIButton) {
		NSLog("showScheduleButtonPressed")
		
		self.performSegueWithIdentifier("SchedulerViewController", sender: self)
	}
	
	@IBAction func netClassroomButton(sender: UIButton) {
		NSLog("netClassroomButton")
		
		self.performSegueWithIdentifier("NetClassroomController", sender: self)
	}
	
	
	
	
	
	

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// NetClassroomViewController
		if segue.identifier == "NetClassroomController" {
		}

	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		//self.view.backgroundColor = UIColor.wetAsphaltColor()
		setButtonStyles()
	}
	
/*
	@IBAction func netClassroomButtonPressed(sender: UIButton) {
		NSLog("netClassroomButtonPressed")
		
		//let plot = CGRectMake(5, 20, 320, 400)
		let alert : FUIAlertView = FUIAlertView()
		alert.title = "Alert"
		alert.message = "Here's a message"
		alert.addButtonWithTitle("Understod")
		alert.defaultButtonColor = UIColor.wetAsphaltColor()
		
		alert.show()
	}
*/
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}





