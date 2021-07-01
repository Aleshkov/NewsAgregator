//
//  NewsRouter.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class NewsRouter {

	private let module: Module

	private let completion: ((Module) -> Void)
	private let showSettingsCompletion: ((Module) -> Void)

	init(completion: @escaping ((Module) -> Void),
		 showSettingsCompletion: @escaping ((Module) -> Void),
		 module: Module) {
		self.completion = completion
		self.showSettingsCompletion = showSettingsCompletion
		self.module = module
	}
    func finishModule() {
		self.completion(self.module)
    }

	func showSettings() {
		self.showSettingsCompletion(self.module)
	}
}
