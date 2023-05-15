//
//  foodByCategoryModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//

import Foundation

struct MealsData: Codable {
    var meals: [Meal]
}

struct Meal: Codable, Identifiable {
    var idMeal: String
    var strMeal: String
    var strDrinkAlternate: String?
    var strCategory: String
    var strArea: String
    var strInstructions: String
    var strMealThumb: String
    var strTags: String?
    var price: String

    var id: String { idMeal }
}
