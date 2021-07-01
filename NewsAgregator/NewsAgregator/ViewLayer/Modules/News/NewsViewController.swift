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
		self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.organize,
																 target: self,
																 action: #selector(rightBarButtonTap))
		self.title = "News"
    }
    
    override func loadView() {
       self.view = NewsView()
    }

	@objc private func rightBarButtonTap() {
		self.presenter?.didTapSettingsButton()
	}
}
