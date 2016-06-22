//
//  ViewController.swift
//  optimizedImage
//
//  Created by 李修冶 on 16/6/21.
//  Copyright © 2016年 李修冶. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var image1: UIImageView!
	@IBOutlet weak var image2: UIImageView!
	@IBOutlet weak var image3: UIImageView!
	@IBOutlet weak var image4: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()

		image1.image = UIImage(named: "image.jpg")
		image2.image = UIImage(named: "image.jpg")

		image3.image = SwiftImage(name: "image.jpg")
		image4.image = SwiftImage(name: "image.jpg")

		for _ in 0..<50000 {
			_ = SwiftImage(name: "image.jpg")
			// _ = UIImage(named: "image")
		}

	}
}

