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
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func viewWillAppear(animated: Bool)  {
		super.viewWillAppear(animated)
		
		var jesus = FUIButton(frame: CGRectMake(20, 350, 280, 40))
		jesus.layer.cornerRadius = 10
		
		//var flatButton = FUIButton(frame:CGRectMake(20, 350, 280, 40), withBackgroundColor:UIColor(red: 0.521569, green: 0.768627, blue: 0.254902, alpha: 1))
		/*
		flatButton.layer.cornerRadius = 10
		flatButton.setTitle("Sign In", forState:UIControlState.Normal)
		flatButton.titleLabel!.font = UIFont(name:"Avenir-Black", size: 20.0)
		flatButton.addTarget(self, action: "flatButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
		self.view.addSubview(flatButton)
		*/
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

