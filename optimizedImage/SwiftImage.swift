//
//  SwiftImage.swift
//  optimizedImage
//
//  Created by 李修冶 on 16/6/22.
//  Copyright © 2016年 李修冶. All rights reserved.
//

import UIKit

class MYImage {
	private var imageDic: [String: UIImage?] = Dictionary()

	class var shared: MYImage {
		struct Inner {
			static let instance: MYImage = MYImage()
		}
		return Inner.instance
	}

	func imageName(name name: String) -> UIImage? {
		if imageDic.keys.count == 0 {
			imageDic[name] = UIImage(named: name)
			return imageDic[name]!
		}
		for key in imageDic.keys {
			if key == name {
				return imageDic[name]!
			} else {
				imageDic[name] = UIImage(named: name)
				return imageDic[name]!
			}
		}
		return nil
	}
}

func SwiftImage(name name: String) -> UIImage? {
	return MYImage.shared.imageName(name: "image.jpg")
}