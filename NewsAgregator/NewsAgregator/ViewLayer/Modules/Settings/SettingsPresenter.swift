//
//  SettingsPresenter.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

final class SettingsPresenter {

	weak var vc: SettingsViewController?

	private let router: SettingsRouter
	private let interactor: SettingsInteractor

	init(router: SettingsRouter,
		 interactor: SettingsInteractor) {
		self.router = router
		self.interactor = interactor
	}

	func done() {
		self.router.finishModule()
	}
}

