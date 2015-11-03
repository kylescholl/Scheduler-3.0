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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("viewDidLoad()")
	}
	
	func initializeButtons () {
		
		// Schedule
		let ssb = showScheduleButton
		
		//	ssb.layer.cornerRadius = 10
		ssb.backgroundColor = UIColor.pumpkinColor()
		
		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		ssb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		// NetClassroom
		let ncb = netClassroomButton
		
		//	ncb.layer.cornerRadius = 10
		ncb.backgroundColor = UIColor.peterRiverColor()
		
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		ncb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ncb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		
		let custom = CGRectMake(0, 362, 375, 5)
		
		let whiteLine = UIView(frame: custom)
		whiteLine.backgroundColor = UIColor.cloudsColor()
		self.view.addSubview(whiteLine)
	}
	
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// SchedulerViewController
		if segue.identifier == "SchedulerViewController" {
			let navigationController = segue.destinationViewController as? UINavigationController
			let schedulerViewController = navigationController?.topViewController as? SchedulerViewController
			
			if let viewController = schedulerViewController {
				//viewController.delegate = self
			}
		}
		
		// NetClassroomViewController
		if segue.identifier == "NetClassroomViewController" {
			//let navigationController = segue.destinationViewController as? UINavigationController
			//let netClassroomViewController = navigationController?.topViewController as? NetClassroomViewController
			
			/*
			if let viewController = netClassroomViewController {
			viewController.delegate = self
			}
			*/
		}
	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		self.view.backgroundColor = UIColor.wetAsphaltColor()
		initializeButtons()
	}
	
	func showScheduleButtonPressed(sender: UIButton) {
		NSLog("showScheduleButtonPressed")
	}
	
	func netClassroomButtonPressed(sender: UIButton) {
		NSLog("netClassroomButtonPressed")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}





