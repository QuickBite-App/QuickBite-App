//
//  CartItems.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 02/05/2023.
//

import Foundation

struct CartItems: Identifiable{
    let name: String
    let imageName: String
    let price: String
    let id = UUID()


}

class ViewCart: ObservableObject {
    @Published var data: [CartItems] = [
        CartItems(name: "Burger", imageName: "Burger", price: "£12.5"),
        CartItems(name: "Steak", imageName: "Steak", price: "£12.5"),
        CartItems(name: "Spaghetti", imageName: "spaghetti", price: "£12.5"),
        CartItems(name: "Ice Cream", imageName: "IceCream", price: "£12.5"),
        CartItems(name: "Hot Dog", imageName: "HotDog", price: "£12.5"),
    ]
}
