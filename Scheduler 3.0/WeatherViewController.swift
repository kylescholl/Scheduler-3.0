//
//  WeatherViewController.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 12/9/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit
import SwiftyJSON

class WeatherViewController: UIViewController {
	
	@IBOutlet var weatherLabel: UILabel!
	@IBOutlet var _weatherLabel: UILabel!
	@IBOutlet var currentWeatherIcon: UIImageView!
	@IBOutlet var staticWeatherIcon: UIImageView!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let manager = AFHTTPRequestOperationManager()
		manager.GET(
			"http://api.openweathermap.org/data/2.5/forecast/daily?q=Philadelphia&mode=json&units=metric&cnt=1&appid=a4ffa36a8b7e03ea5f1796cf8124b38e",
			parameters: nil,
			
			success: { (operation: AFHTTPRequestOperation?, responseObject: AnyObject!) in
				print("Response: " + responseObject.description)
				
				let json = JSON(responseObject)
				if let forecast = json["list"][0]["weather"][0]["description"].string {
					self.weatherLabel.text = forecast
				}
				
				if let forecastType = json["list"][0]["weather"][0]["id"].string {
					
					let forecastID : Int = Int(forecastType)!
					switch forecastID {
					case 200...232:
						print("Thunderstorm")
						
					case 300...321:
						print("Drizzle")
						
					case 500...531:
						print("Rain")
						
					case 600...622:
						print("Snow")
						
					case 701...781:
						print("Atmosphere (fog and stuff)")
						
					case 800:
						print("Clear")
						
					case 801...804:
						print("Clouds")
					
					case 900:
						print("Tornado")
					
					case 901...902:
						print("Hurricane")
					
					case 903:
						print("Extreme cold")
					
					case 904:
						print("Extreme hot")
					
					case 905:
						print("Extreme wind")
					
					case 906:
						print("Extreme hail")
					
					default:
						print("Failure")
					
					}
				}
			},
			
			
			failure: { (operation: AFHTTPRequestOperation?, error: NSError!) in
				print("Error: " + error.localizedDescription)
				self.weatherLabel.text = "error"
		})
		
		
		
		
		let _manager = AFHTTPRequestOperationManager()
		_manager.GET(
			"http://api.openweathermap.org/data/2.5/forecast/daily?q=Philadelphia&mode=json&units=imperial&cnt=1&appid=a4ffa36a8b7e03ea5f1796cf8124b38e",
			parameters: nil,
			
			success: { (operation: AFHTTPRequestOperation?, responseObject: AnyObject!) in
				print("Response: " + responseObject.description)
				
				let json = JSON(responseObject)
				if let forecast = json["list"][0]["main"][0]["temp"].string {
					self._weatherLabel.text = forecast
				}
			},
			failure: { (operation: AFHTTPRequestOperation?, error: NSError!) in
				print("Error: " + error.localizedDescription)
				self._weatherLabel.text = "error"
		})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
