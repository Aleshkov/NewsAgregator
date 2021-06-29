//
//  NewsRouter.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class NewsRouter: Module {
    
    internal var vc: UIViewController
    internal var completion: (() -> Void)?
    
    init(vc: UIViewController) {
        self.vc = vc
    }

    func finish() {
        self.completion?()
    }
}
