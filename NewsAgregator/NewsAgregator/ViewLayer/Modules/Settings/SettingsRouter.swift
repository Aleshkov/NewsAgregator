//
//  SettingsRouter.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class SettingsRouter {

	private let module: Module

	private let completion: ((Module) -> Void)

	init(completion: @escaping ((Module) -> Void),
		 module: Module) {
		self.completion = completion
		self.module = module
	}

	func finishModule() {
		self.completion(self.module)
	}
}
