//
//  SettingsModule.swift
//  NewsAgregator
//
//  Created by aleshkov1 on 01.07.2021.
//

enum SettingsModule {

	struct Dependencies {
		var completion: ((Module) -> Void)
	}

	static func makeModule(dependencies: Dependencies) -> Module {
		let interactor = SettingsInteractor()
		let vc = SettingsViewController()
		let module = Module(vc: vc)
		let router = SettingsRouter(completion: dependencies.completion,
									module: module)
		let presenter = SettingsPresenter(router: router,
									  interactor: interactor)
		vc.presenter = presenter
		presenter.vc = vc
		return module
	}
}
