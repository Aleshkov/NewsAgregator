//
//  MainFlow.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

class MainFlow {
    
    private let dependency: Dependency
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
	func showNewsModule() -> Module {
		let dependency = NewsModule.Dependencies(completion: self.newsModuleFinish,
														   showSettingsCompletion: self.showSettingsModule)
        let module = NewsModule.makeModule(dependencies: dependency)
        return module
    }
    
	func newsModuleFinish(_ previousModule: Module) {
        print("finish first module")
    }

	func showSettingsModule(_ previousModule: Module) {
		let dependency = SettingsModule.Dependencies(completion: self.hideSettingsModule)
		let module = SettingsModule.makeModule(dependencies: dependency)

		if Bool.random() {
			previousModule.presentModule(module)
		} else {
			previousModule.pushModule(module)
		}
	}

	func hideSettingsModule(_ module: Module) {
		module.dismiss()
	}
}
