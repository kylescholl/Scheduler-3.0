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
	@IBOutlet var weatherButton: UIButton!
	
	
	@IBOutlet var orangeButton: UIButton!
	@IBOutlet var carrotButton: UIButton!
	@IBOutlet var pumpkinButton: UIButton!
	@IBOutlet var greenSeaButton: UIButton!
	
	
	@IBOutlet var timeLabel: UILabel!
	@IBOutlet var dateLabel: UILabel!
	
	
	@IBOutlet var helpView: UIView!
	
	
	func setButtonStyles() {
		
		let ssb = showScheduleButton
		let ncb = netClassroomButton
		let wb = weatherButton
		
		ssb.layer.cornerRadius = 10.0
		ncb.layer.cornerRadius = 10.0
		wb.layer.cornerRadius = 10.0

		ssb.setTitle("Schedule", forState: UIControlState.Normal)
		ncb.setTitle("NetClassroom", forState: UIControlState.Normal)
		wb.setTitle("Weather", forState: UIControlState.Normal)
		
		ssb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		ncb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		wb.titleLabel!.font = UIFont(name: "Helvetica Neue Light", size: 50.0)
		
		displayDate()
	}
	
	func displayDate() {
		
		let date = NSDate()
		let calendar = NSCalendar.currentCalendar()
		let components = calendar.components([.Year, .Month, .Day, .Weekday, .Hour, .Minute], fromDate: date)
		
		let minute : Int = components.minute
		let hour : Int = components.hour
		let weekday : Int = components.weekday
		let day : Int = components.day
		let month : Int = components.month
		
		let currentMonth : String
		switch month {
		case 1:
			currentMonth = "January"
		case 2:
			currentMonth = "February"
		case 3:
			currentMonth = "March"
		case 4:
			currentMonth = "April"
		case 5:
			currentMonth = "May"
		case 6:
			currentMonth = "June"
		case 7:
			currentMonth = "July"
		case 8:
			currentMonth = "August"
		case 9:
			currentMonth = "September"
		case 10:
			currentMonth = "October"
		case 11:
			currentMonth = "November"
		case 12:
			currentMonth = "December"
		default:
			currentMonth = "Error"
			NSLog("Error")
		}
		
		let currentWeekday : String
		switch weekday {
		case 1:
			currentWeekday = "Sunday"
		case 2:
			currentWeekday = "Monday"
		case 3:
			currentWeekday = "Tuesday"
		case 4:
			currentWeekday = "Wednesday"
		case 5:
			currentWeekday = "Thursday"
		case 6:
			currentWeekday = "Friday"
		case 7:
			currentWeekday = "Saturday"
		default:
			currentWeekday = "Error"
			NSLog("Error")
		}
		
		dateLabel.text = ("\(currentWeekday), \(currentMonth) \(day)")
		timeLabel.text = ("\(hour):\(minute)")
	}
	
	
	@IBAction func helpButton(sender: UIButton) {
		NSLog("HelpButtonPressed")
		
		helpView.fadeIn(duration: 1.0)
	}
	
	@IBAction func showScheduleButtonPressed(sender: UIButton) {
		NSLog("showScheduleButtonPressed")
		
		self.performSegueWithIdentifier("SchedulerSegue", sender: self)
	}
	
	@IBAction func netClassroomButton(sender: UIButton) {
		NSLog("netClassroomButton")
		self.performSegueWithIdentifier("NetClassroomSegue", sender: self)
	}
	
	func dismissView() {
		//	view.endEditing(true)
		helpView.fadeOut(duration: 1.0)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//Looks for single or multiple taps.
		let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissView")
		view.addGestureRecognizer(tap)
		
		
		helpView.frame = CGRectMake(34, 80, 305, 567)
		helpView.layer.cornerRadius = 5.0
		helpView.alpha = 0.0
		
		self.view.addSubview(helpView)
	}

	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		print("viewWillAppear()")
		
		//self.view.backgroundColor = UIColor.wetAsphaltColor()
		setButtonStyles()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}





