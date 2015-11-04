//
//  TextView.swift
//  Scheduler 3.0
//
//  Created by Kyle Scholl on 11/3/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//


/*
import Foundation

class TextView: UITextView {
	
	override init(frame: CGRect) {
		init(frame: frame)
		addContentSizeObserver()
	}
	
	override init(frame: CGRect, textContainer: NSTextContainer?) {
		super.init(frame: frame, textContainer: textContainer)
	}
	
	required init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func addContentSizeObserver() {
		self.addObserver(self, forKeyPath: "contentSize", options: NSKeyValueObservingOptions.New, context: nil)
	}
	
	private func removeContentSizeObserver() {
		self.removeObserver(self, forKeyPath: "contentSize")
	}
	
	override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
		var top = (bounds.size.height - contentSize.height * zoomScale) / 2.0
		top = top < 0.0 ? 0.0 : top
		object.setContentOffset(CGPoint(x: contentOffset.x, y: -top), animated: false)
	}
	
	deinit {
		removeContentSizeObserver()
	}
	
}
*/

