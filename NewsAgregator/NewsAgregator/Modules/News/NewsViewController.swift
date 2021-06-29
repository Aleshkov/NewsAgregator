//
//  NewsViewController.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class NewsViewController: UIViewController {
    
    var presenter: NewsPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.done()
    }
    
    override func loadView() {
       self.view = NewsView()
    }
}
