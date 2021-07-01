//
//  NewsPresenter.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

final class NewsPresenter {
    
    weak var vc: NewsViewController?
    
    private let router: NewsRouter
    private let interactor: NewsInteractor
    
    init(router: NewsRouter,
         interactor: NewsInteractor) {
        self.router = router
        self.interactor = interactor
    }
    
    func done() {
        self.router.finishModule()
    }

	func didTapSettingsButton() {
		self.router.showSettings()
	}
}
