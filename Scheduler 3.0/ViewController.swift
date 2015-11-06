//
//  ViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	func hehe(hehe: SchedulerViewController, lol: String) {
	
	}
	
	
	@IBOutlet var showScheduleButton: UIButton!
	@IBOutlet var netClassroomButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("viewDidLoad()")
	}
	
	func setButtonStyles() {
		
		// Schedule
		let ssb = showScheduleButton
		
		//	ssb.layer.cornerRadius = 10
		ssb.backgroundColor = UIColor.orangeColor()
		//ssb.backgroundColor = UIColor.belizeHoleColor()
		
		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		ssb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		// NetClassroom
		let ncb = netClassroomButton
		
		//	ncb.layer.cornerRadius = 10
		//ncb.backgroundColor = UIColor.peterRiverColor()
		ncb.backgroundColor = UIColor.orangeColor()
		
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		ncb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
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
	
	
	
	
	@IBAction func animateButtons(sender: UIButton) {
		
		let button = sender as UIButton
		
		button.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
		button.addTarget(self, action: "touchEnded", forControlEvents: .TouchCancel)
		

/*
		// resets the color back to normal
		UIView.animateWithDuration(1.0, animations: {
			button.backgroundColor = UIColor.orangeColor()
		})
*/
	}
	
	func pressed(sender: UIButton!) {
		
		let button = sender as UIButton
		
		// darken the button's color
		UIView.animateWithDuration(2.0, animations: {
			button.backgroundColor = UIColor.pumpkinColor()
		})
	}
	
	func touchEnded(sender: UIButton!) {
		print("touchEnded() ran")
	}
	
	
	
	
	
	
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// SchedulerViewController
		if segue.identifier == "AddItemViewController" {
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
		setButtonStyles()
	}
	
	
	
	
	
	
	
	
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
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}





