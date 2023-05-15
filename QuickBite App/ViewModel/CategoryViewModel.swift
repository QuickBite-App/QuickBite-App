//
//  CategoryViewModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//

import Foundation

func loadCategoryData() -> CategoryData? {
    if let url = Bundle.main.url(forResource: "category", withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(CategoryData.self, from: data)
        } catch {
            print("Error loading category data: \(error)")
        }
    }
    return nil
}
