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
	
	func initializeButtonText () {
		
		// Schedule
		let ssb = showScheduleButton
		ssb.layer.cornerRadius = 20
		ssb.backgroundColor = UIColor.peterRiverColor()
		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		ssb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 20.0)
		
		// NetClassroom
		let ncb = netClassroomButton
		ncb.layer.cornerRadius = 20
		ncb.backgroundColor = UIColor.peterRiverColor()
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		ncb.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
		ncb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 20.0)
	}
	
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		self.view.backgroundColor = UIColor.wetAsphaltColor()
		initializeButtonText()
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





