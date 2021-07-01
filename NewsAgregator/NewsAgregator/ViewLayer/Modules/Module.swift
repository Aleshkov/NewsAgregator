//
//  Module.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class Module {
	let vc: UIViewController

	init(vc: UIViewController) {
		self.vc = vc
	}

	func pushModule(_ module: Module, animated: Bool = true) {
		self.vc.navigationController?.pushViewController(module.vc, animated: animated)
	}

	func presentModule(_ module: Module, animated: Bool = true) {
		self.vc.present(module.vc, animated: animated, completion: nil)
	}

	func dismiss(animated: Bool = true, completion: (() -> Void)? = nil) {
		if let navigationController = vc.navigationController {
			navigationController.popViewController(animated: animated)
		} else {
			self.vc.dismiss(animated: animated, completion: completion)
		}
	}
}
