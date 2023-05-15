//
//  CategoryModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//



struct CategoryData: Codable {
    var meals: [Meal]

    struct Meal: Codable, Identifiable, Hashable {
        var id: String { strCategory }
        let strCategory: String
    }
}
