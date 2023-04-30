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
    let Price: String
    let id = UUID()
    
    static func foods() -> [FoodItems]{
        [FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Pancakes", imageName: "Pancakes", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Burger", imageName: "Burger", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Ice Cream", imageName: "IceCream", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Hot Dog", imageName: "HotDog", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Steak", imageName: "Steak", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Jollof Rice", imageName: "JollofRice", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
         FoodItems(name: "Spaghetti", imageName: "Spaghetti", Description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.", Price: "12.5"),
        ]
    }
}
