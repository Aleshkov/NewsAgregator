//
//  NewsModule.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

enum NewsModule {

	struct Dependencies {
		var completion: ((Module) -> Void)
		var showSettingsCompletion: ((Module) -> Void)
	}

	static func makeModule(dependencies: Dependencies) -> Module {
		let interactor = NewsInteractor()
		let vc = NewsViewController()
		let module = Module(vc: vc)
		let router = NewsRouter(completion: dependencies.completion,
								showSettingsCompletion: dependencies.showSettingsCompletion,
								module: module)
		let presenter = NewsPresenter(router: router,
									  interactor: interactor)
		vc.presenter = presenter
		presenter.vc = vc
		return module
	}
}
