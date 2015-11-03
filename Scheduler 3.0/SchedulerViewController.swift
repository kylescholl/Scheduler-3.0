//
//  SchedulerViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/2/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController {
	
	
	
	
	
	
	
	
	
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
	@IBOutlet var aBlockLabelCollection: [UILabel]!
	
	// Coding
	@IBOutlet var bBlockLabelCollection: [UILabel]!
	
	// Free / college counseling
	@IBOutlet var cBlockLabelCollection: [UILabel]!
	
	// English
	@IBOutlet var dBlockLabelCollection: [UILabel]!
	
	// Science
	@IBOutlet var eBlockLabelCollection: [UILabel]!
	
	// Math
	@IBOutlet var fBlockLabelCollection: [UILabel]!
	
	// History
	@IBOutlet var gBlockLabelCollection: [UILabel]!
	
	
	// DAY COLLECTIONS (vertical) //
	// Day 1
	@IBOutlet var dayOneGroup: [UILabel]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UILabel]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UILabel]!
	
	// Day 4
	@IBOutlet var dayFourGroup: [UILabel]!
	
	// Day 5
	@IBOutlet var dayFiveGroup: [UILabel]!
	
	// Day 6
	@IBOutlet var daySixGroup: [UILabel]!
	
	// Day 7
	@IBOutlet var daySevenGroup: [UILabel]!
	
	
	// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	
	
	
	
	
	
	
	
	
	
	
	@IBAction func save(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
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
