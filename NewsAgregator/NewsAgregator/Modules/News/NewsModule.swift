//
//  NewsModule.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

enum NewsModule {
    
    struct NewsModuleDependencies {
    }

    static func makeModule(dependencies: NewsModuleDependencies) -> Module {
        let interactor = NewsInteractor()
        let vc = NewsViewController()
        let router = NewsRouter(vc: vc)
        let presenter = NewsPresenter(router: router,
                                      interactor: interactor)
        vc.presenter = presenter
        presenter.vc = vc
        return router
    }
}
