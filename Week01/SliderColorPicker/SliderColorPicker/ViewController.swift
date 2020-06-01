//
//  ViewController.swift
//  SliderColorPicker
//
//  Created by Srithan Savela on 31/05/20.
//  Copyright © 2020 Srithan Savela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var redSlider: UISlider!
	@IBOutlet weak var greenSlider: UISlider!
	@IBOutlet weak var blueSlider: UISlider!
	
	@IBOutlet weak var redLabel: UILabel!
	@IBOutlet weak var greenLabel: UILabel!
	@IBOutlet weak var blueLabel: UILabel!
	
	@IBOutlet weak var colorNameLabel: UILabel!
	
	var redValue: Int = 0
	var greenValue: Int = 0
	var blueValue: Int = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func RGBSliderMoved(_ sender: AnyObject) {
		redValue = Int(redSlider.value.rounded())
		greenValue = Int(greenSlider.value.rounded())
		blueValue = Int(blueSlider.value.rounded())
		
		redLabel.text = String(redValue)
		greenLabel.text = String(greenValue)
		blueLabel.text = String(blueValue)
	}
	
	@IBAction func SetColor(_ sender: AnyObject) {
		
		let alert = UIAlertController(title: "What's your background color?", message: "Your answer doesn't affect anything", preferredStyle: .alert)
		
		alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (UIAlertAction) in
			
			let textField = alert.textFields?[0]
			self.colorNameLabel.text = textField?.text

			self.ChangeBackgroundColor()
		}))
		
		alert.addTextField { (textField: UITextField) in
			textField.placeholder = "Enter color name"
		}
		
		present(alert, animated: true, completion: nil)
	}
	
	@IBAction func Reset(_ sender: AnyObject) {
		redSlider.value = 0
		greenSlider.value = 0
		blueSlider.value = 0
		
		redLabel.text = "0"
		greenLabel.text = "0"
		blueLabel.text = "0"
		
		ChangeBackgroundColor()
		colorNameLabel.text = "Color Name"
	}
	
	func ChangeBackgroundColor() {
		self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
	}
	


}

