//
//  MainFlow.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

class MainFlow {
    
    private let dependency: Dependency
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    func firstModule() -> Module {
        let dependency = NewsModule.NewsModuleDependencies()
        var module = NewsModule.makeModule(dependencies: dependency)
        module.completion = {
            self.next1(module)
        }
        return module
    }
    
    func next1(_ module: Module) {
        print("finish first module")
    }
}
