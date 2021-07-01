//
//  SettingsViewController.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class SettingsViewController: UIViewController {

	var presenter: SettingsPresenter?

	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Settings"
	}

	override func loadView() {
	   self.view = SettingsView()
	}
}
