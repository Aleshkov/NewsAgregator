//
//  NewsView.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

final class NewsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
		self.backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

