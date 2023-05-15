//
//  CartItemModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//

import Foundation

struct CartItem: Identifiable {
    let id = UUID()
    let meal: Meal
    var quantity: Int
}

//class Cart: ObservableObject {
//    @Published var items = [CartItem]()
//}

class Cart: ObservableObject {
    @Published var items = [CartItem]()
    
    // Add item to cart
    func add(item: Meal) {
        if let index = items.firstIndex(where: { $0.meal.idMeal == item.idMeal }) {
            items[index].quantity += 1
        } else {
            items.append(CartItem(meal: item, quantity: 1))
        }
    }
    
    // Remove item from cart
    func remove(item: Meal) {
        if let index = items.firstIndex(where: { $0.meal.idMeal == item.idMeal }) {
            if items[index].quantity > 1 {
                items[index].quantity -= 1
            } else {
                items.remove(at: index)
            }
        }
    }
}
