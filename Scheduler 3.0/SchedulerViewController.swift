//
//  SchedulerViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController, AddItemViewControllerDelegate {
	
	
	func aBlockController(aBlockController: AddItemViewController, aBlockItem: String){
		
		print("aBlockItem: \(aBlockItem)")
		
		let numOfBlocks: Int = (aBlockTextViewCollection.count)
		print("numOfABlocks: \(numOfBlocks)")
		
		if aBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(aBlockItem, forKey: "ABlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				aBlockTextViewCollection[index].text = aBlockItem
				print("index: \(index)")
			}
		}
	}
	
	func bBlockController(bBlockController: AddItemViewController, bBlockItem: String){
		
		let numOfBlocks: Int = bBlockTextViewCollection.count
		
		if bBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(bBlockItem, forKey: "BBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				bBlockTextViewCollection[index].text = bBlockItem
			}
		}
	}
	
	func cBlockController(cBlockController: AddItemViewController, cBlockItem: String){
		
		let numOfBlocks: Int = cBlockTextViewCollection.count
		print("numOfABlocks: \(numOfBlocks)")
		
		if cBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(cBlockItem, forKey: "CBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				cBlockTextViewCollection[index].text = cBlockItem
			}
		}
	}
	
	func dBlockController(dBlockController: AddItemViewController, dBlockItem: String){
		
		let numOfBlocks: Int = dBlockTextViewCollection.count
		if dBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(dBlockItem, forKey: "DBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				dBlockTextViewCollection[index].text = dBlockItem
			}
		}
	}
	
	func eBlockController(eBlockController: AddItemViewController, eBlockItem: String){
		
		let numOfBlocks: Int = eBlockTextViewCollection.count
		if eBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(eBlockItem, forKey: "EBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				eBlockTextViewCollection[index].text = eBlockItem
			}
		}
	}
	
	func fBlockController(fBlockController: AddItemViewController, fBlockItem: String){
		
		let numOfBlocks: Int = fBlockTextViewCollection.count
		if fBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(fBlockItem, forKey: "FBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				fBlockTextViewCollection[index].text = fBlockItem
			}
		}
	}
	
	func gBlockController(gBlockController: AddItemViewController, gBlockItem: String){
		
		let numOfBlocks: Int = gBlockTextViewCollection.count
		
		if gBlockItem == "" {
			print("Text entered was blank")
		} else {
			let defaults = NSUserDefaults.standardUserDefaults()
			defaults.setValue(gBlockItem, forKey: "GBlock")
			defaults.synchronize()
			
			for index in 0..<numOfBlocks {
				gBlockTextViewCollection[index].text = gBlockItem
			}
		}
	}
	
	
	
	
	                  ////////////////
    	            ////////////////////
                  ////////////////////////
                ////////////////////////////
			  ////////////////////////////////
            ////////////////////////////////////
          ////////////////////////////////////////
        ////////////////////////////////////////////
      ////////////////////////////////////////////////
    ////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////
////////////////// OUTLET COLLECTIONS //////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
	

////////////////////////////////////////////////////////////
////////////// LETTER BLOCKS (diagonal) ////////////////////
	// Robotics
	@IBOutlet var aBlockTextViewCollection: [UITextView]!
	
	// Coding
	@IBOutlet var bBlockTextViewCollection: [UITextView]!
	
	// Free / college counseling
	@IBOutlet var cBlockTextViewCollection: [UITextView]!
	
	// English
	@IBOutlet var dBlockTextViewCollection: [UITextView]!
	
	// Science
	@IBOutlet var eBlockTextViewCollection: [UITextView]!
	
	// Math
	@IBOutlet var fBlockTextViewCollection: [UITextView]!
	
	// History
	@IBOutlet var gBlockTextViewCollection: [UITextView]!
	
	
	// DAY COLLECTIONS (vertical) //
	// Day 1
	@IBOutlet var dayOneGroup: [UITextView]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UITextView]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UITextView]!
	
	// Day 4
	@IBOutlet var dayFourGroup: [UITextView]!
	
	// Day 5
	@IBOutlet var dayFiveGroup: [UITextView]!
	
	// Day 6
	@IBOutlet var daySixGroup: [UITextView]!
	
	// Day 7
	@IBOutlet var daySevenGroup: [UITextView]!
	
	
	// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	
	
	
	
	
	
	
	
	
	func setVerticalAndHorizontalPositionForText() {
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].textAlignment = .Center
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].textAlignment = .Center
		}
	}
	
	
	
	
	// Clears the schedule
	@IBAction func clearSchedule(sender: UIBarButtonItem) {
		//Create the AlertController
		let actionSheetController: UIAlertController = UIAlertController(title: "Clear",
			message: "Are you sure that you want to clear the schedule?",
			preferredStyle: .Alert)
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			//Do some stuff
		}
		actionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Yes, clear", style: UIAlertActionStyle.Default) { action -> Void in
			self.setTextViewText("")
			
		}
		actionSheetController.addAction(nextAction)
		
		//Present the AlertController
		self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	
	
	
	// Edits the schedule
	@IBAction func editSchedule(sender: UIBarButtonItem) {
		//Create the AlertController
		let actionSheetController: UIAlertController = UIAlertController(title: "Edit",
			message: "Would you like to edit the block groups or each individually?",
			preferredStyle: .Alert)
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			//Do some stuff
		}
		actionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Yes, clear", style: UIAlertActionStyle.Default) { action -> Void in
			self.setTextViewText("")
			
		}
		actionSheetController.addAction(nextAction)
		
		//Present the AlertController
		self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	
	@IBAction func back(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	func setTextViewText(someString: String) {
		
		let aNumIndex : Int = aBlockTextViewCollection.count
		let bNumIndex : Int = bBlockTextViewCollection.count
		let cNumIndex : Int = cBlockTextViewCollection.count
		let dNumIndex : Int = dBlockTextViewCollection.count
		let eNumIndex : Int = eBlockTextViewCollection.count
		let fNumIndex : Int = fBlockTextViewCollection.count
		let gNumIndex : Int = gBlockTextViewCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockTextViewCollection[index].text = someString
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockTextViewCollection[index].text = someString
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockTextViewCollection[index].text = someString
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockTextViewCollection[index].text = someString
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockTextViewCollection[index].text = someString
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockTextViewCollection[index].text = someString
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockTextViewCollection[index].text = someString
		}
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// SchedulerViewController
		if segue.identifier == "AddItemViewController" {
			let navigationController = segue.destinationViewController as? UINavigationController
			let addItemViewController = navigationController?.topViewController as? AddItemViewController
			
			if let viewController = addItemViewController {
				viewController.delegate = self
			}
		}
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		NSLog("SchedulerViewController: viewDidLoad()")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
