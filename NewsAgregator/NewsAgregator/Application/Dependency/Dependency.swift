//
//  Dependency.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 01.07.2021.
//

import Foundation

class Dependency {
    
    private let factory: DependencyFactory
    
    init(factory: DependencyFactory) {
        self.factory = factory
    }
}
