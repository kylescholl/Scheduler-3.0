//
//  EditScheduleViewController.swift
//  
//
//  Created by Kyle Scholl on 11/3/15.
//
//

import UIKit

protocol EditScheduleViewControllerDelegate {
	
	func aBlockController(aBlockController: EditScheduleViewController, aBlockItem: String)
	func bBlockController(bBlockController: EditScheduleViewController, bBlockItem: String)
	func cBlockController(cBlockController: EditScheduleViewController, cBlockItem: String)
	func dBlockController(dBlockController: EditScheduleViewController, dBlockItem: String)
	func eBlockController(eBlockController: EditScheduleViewController, eBlockItem: String)
	func fBlockController(fBlockController: EditScheduleViewController, fBlockItem: String)
	func gBlockController(gBlockController: EditScheduleViewController, gBlockItem: String)
}

class EditScheduleViewController: UIViewController, UITextFieldDelegate {
	
	@IBOutlet var ABlock: UITextField?
	@IBOutlet var BBlock: UITextField?
	@IBOutlet var CBlock: UITextField?
	@IBOutlet var DBlock: UITextField?
	@IBOutlet var EBlock: UITextField?
	@IBOutlet var FBlock: UITextField?
	@IBOutlet var GBlock: UITextField?
	
	var delegate: EditScheduleViewControllerDelegate?
	
	@IBAction func save(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	@IBAction func create(sender: AnyObject) {
		
		let ABlockText : String = self.ABlock!.text!
		print("ABlockText: \(ABlockText)")
		
		
		let BBlockText : String = self.BBlock!.text!
		print("BBlockText: \(BBlockText)")
		
		
		let CBlockText : String = self.CBlock!.text!
		print("CBlockText: \(CBlockText)")
		
		
		let DBlockText : String = self.DBlock!.text!
		print("DBlockText: \(DBlockText)")
		
		
		let EBlockText : String = self.EBlock!.text!
		print("EBlockText: \(EBlockText)")
		
		
		let FBlockText : String = self.FBlock!.text!
		print("FBlockText: \(FBlockText)")
		
		
		let GBlockText : String = self.GBlock!.text!
		print("GBlockText: \(GBlockText)")
		
		
		if let delegate = self.delegate {
			delegate.aBlockController(self, aBlockItem: ABlockText)
			delegate.bBlockController(self, bBlockItem: BBlockText)
			delegate.cBlockController(self, cBlockItem: CBlockText)
			delegate.dBlockController(self, dBlockItem: DBlockText)
			delegate.eBlockController(self, eBlockItem: EBlockText)
			delegate.fBlockController(self, fBlockItem: FBlockText)
			delegate.gBlockController(self, gBlockItem: GBlockText)
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}
