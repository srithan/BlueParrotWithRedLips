//
//  AboutViewController.swift
//  SliderColorPicker
//
//  Created by Srithan Savela on 01/06/20.
//  Copyright © 2020 Srithan Savela. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
		@IBOutlet weak var newwebview: WKWebView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
			if let url = URL(string: "https://en.wikipedia.org/wiki/RGB_color_model") {
				let request = URLRequest(url: url)
				newwebview.load(request)
			}
    }
    
	@IBAction func Close(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
}
