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
    let Description: String
    let id = UUID()
    
    static func foods() -> [FoodItems]{
        [FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Pancakes", imageName: "Pancakes", Description: "Food Description"),
         FoodItems(name: "Burger", imageName: "Burger", Description: "Food Description"),
         FoodItems(name: "Ice Cream", imageName: "IceCream", Description: "Food Description"),
         FoodItems(name: "Hot Dog", imageName: "HotDog", Description: "Food Description"),
         FoodItems(name: "Steak", imageName: "Steak", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Food Description"),
        ]
    }
}
