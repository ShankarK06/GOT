//
//  ThronePresenter.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
final class BattleScreenPresenter: BattleScreenPresenterProtocol{
    var interactor: BattleListInteractorProtocol?
    weak var productsListView: BattleScreenViewProtocol?
    
    func fetchProducts() {
        interactor?.fetchProducts()
    }
    
//    func getProducts(products: [ProductSectionItems]) {
//        productsListView?.getProducts(products: products)
//    }
    
    init(view: BattleScreenViewProtocol?) {
        productsListView = view
    }

}
