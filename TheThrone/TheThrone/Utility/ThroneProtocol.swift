//
//  ThroneProtocol.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
protocol ThroneBuilderProtocol {
//    func buildProductScreen() -> ProductsListViewController
}

protocol BattleScreenViewProtocol: class {
//    func getProducts(products: [ProductSectionItems])
}

protocol BattleListInteractorProtocol: class {
    func fetchProducts()
}

protocol BattleScreenPresenterProtocol: class {
    func fetchProducts()
//    func getProducts(products: [ProductSectionItems])
}
