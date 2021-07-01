//
//  Module.swift
//  NewsAgregator
//
//  Created by Andrei Aleshkov on 26.06.2021.
//

import UIKit

protocol Module {
    var vc: UIViewController { get }
    var completion: (() -> Void)? { get set }
}
