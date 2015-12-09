//
//  WeatherViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 12/9/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
	
	@IBOutlet var weatherLabel: UILabel!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let manager = AFHTTPRequestOperationManager()
		manager.GET(
			"http://api.openweathermap.org/data/2.5/forecast/daily?q=Philadelphia&mode=json&units=metric&cnt=1&appid=a4ffa36a8b7e03ea5f1796cf8124b38e",
			parameters: nil,
			
			success: { (operation: AFHTTPRequestOperation?, responseObject: AnyObject!) in
				print("Response: " + responseObject.description)
				
				if let listOfDays = responseObject["list"] as? NSArray {
					if let tomorrow = listOfDays[0] as? NSDictionary {
						if let tomorrowsWeather = tomorrow["weather"] as? NSArray {
							if let firstWeatherOfDay = tomorrowsWeather[0] as? NSDictionary {
								if let forecast = firstWeatherOfDay["description"] as? String {
									self.weatherLabel.text = "Projected forecast: \(forecast)"
								}
							}
						}
					}
				}
			},
			failure: { (operation: AFHTTPRequestOperation?, error: NSError!) in
				print("Error: " + error.localizedDescription)
		})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
