//
//  MainFlow.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

class MainFlow {
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func firstModule() -> Module {
        let dependencies = NewsModule.NewsModuleDependencies()
        var module = NewsModule.makeModule(dependencies: dependencies)
        module.completion = {
            self.next1(module)
        }
        return module
    }
    
    func next1(_ module: Module) {
        print("finish first module")
    }
}
