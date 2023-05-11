//
//  FoodItems.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 30/04/2023.
//

import Foundation

struct FoodItems: Identifiable{
    let name: String
    let imageName: String
    let description: String
    let price: String
    let id = UUID()


}

class ViewFood: ObservableObject {
    @Published var data: [FoodItems] = [
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Steak", imageName: "Steak", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Spaghetti", imageName: "spaghetti", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Ice Cream", imageName: "IceCream", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Pancake", imageName: "Pancakes", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),
        FoodItems(name: "Burger", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", price: "£12.5"),

    ]
}
