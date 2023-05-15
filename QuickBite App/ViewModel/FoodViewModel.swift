//
//  FoodByCategoryViewModel.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 15/05/2023.
//

import Foundation

// Filter by Food Category
class FoodByCategoryViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var filteredMeals = [Meal]()
    @Published var selectedCategory: String? {
        didSet {
            filterMeals()
        }
    }

    init() {
        fetchMeals()
    }

    func fetchMeals() {
        if let url = Bundle.main.url(forResource: "food", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from: data)
                DispatchQueue.main.async {
                    self.meals = jsonData.meals
                    self.filterMeals()
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
    func filterMeals() {
        if let category = selectedCategory {
            filteredMeals = meals.filter { $0.strCategory == category }
        } else {
            filteredMeals = meals
        }
    }
}

class CategoryViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var filteredMeal: Meal?
    @Published var selectedCategory: String? {
        didSet {
            filterMeals()
        }
    }

    init() {
        fetchMeals()
    }

    func fetchMeals() {
        if let url = Bundle.main.url(forResource: "food", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from: data)
                DispatchQueue.main.async {
                    self.meals = jsonData.meals
                    self.filterMeals()
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
    func filterMeals() {
        if let category = selectedCategory {
            filteredMeal = meals.first(where: { $0.strCategory == category })
        } else {
            filteredMeal = nil
        }
    }
}


class FoodDetailViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var filteredMeal: Meal?
    @Published var selectedMealId: String? {
        didSet {
            filterMeals()
        }
    }

    init() {
        fetchMeals()
    }

    func fetchMeals() {
        if let url = Bundle.main.url(forResource: "food", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from: data)
                DispatchQueue.main.async {
                    self.meals = jsonData.meals
                    self.filterMeals()
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
    func filterMeals() {
        if let mealId = selectedMealId {
            filteredMeal = meals.first(where: { $0.idMeal == mealId })
        } else {
            filteredMeal = nil
        }
    }
}

class SearchFoodViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var filteredMeals: [Meal] = []
    @Published var searchQuery: String = "" {
        didSet {
            searchMeals()
        }
    }

    init() {
        fetchMeals()
    }

    func fetchMeals() {
        if let url = Bundle.main.url(forResource: "food", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MealsData.self, from: data)
                DispatchQueue.main.async {
                    self.meals = jsonData.meals
                    self.searchMeals()
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }

    func searchMeals() {
        if searchQuery.isEmpty {
            filteredMeals = meals
        } else {
            filteredMeals = meals.filter { $0.strMeal.lowercased().contains(searchQuery.lowercased()) }
        }
    }
}
