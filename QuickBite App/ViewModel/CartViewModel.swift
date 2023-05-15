//
//  CartViewModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cart = Cart()

    func addItem(meal: Meal) {
        if let index = cart.items.firstIndex(where: { $0.meal.id == meal.id }) {
            cart.items[index].quantity += 1
        } else {
            cart.items.append(CartItem(meal: meal, quantity: 1))
        }
    }

    func removeItem(meal: Meal) {
        if let index = cart.items.firstIndex(where: { $0.meal.id == meal.id }) {
            if cart.items[index].quantity > 1 {
                cart.items[index].quantity -= 1
            } else {
                cart.items.remove(at: index)
            }
        }
    }
}
