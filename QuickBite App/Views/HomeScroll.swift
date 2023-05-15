//
//  HomeScroll.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 14/05/2023.
//

import SwiftUI

struct HomeScroll: View {
    @StateObject var data = FoodByCategoryViewModel()
    @State var category = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 11) {
                ForEach(data.filteredMeals , id: \.idMeal) { meal in
                    NavigationLink(destination: MenuListView(category: meal.strCategory)) {
                        VStack {
                        }
                        .frame(width: 129, height: 163)
                        .background(
                            AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                                image.resizable()
                                    .scaledToFill()
                                    .frame(width: .infinity, height: 200)
                                    .clipped()
                            } placeholder: {
                                ZStack {
                                    ProgressView()
                                }
                                .frame(maxWidth: .infinity, maxHeight: 200)
                            }
                            .frame(width: .infinity, height: 200)
                            .clipped()
                        )
                        .cornerRadius(10)

                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
        .onAppear {
             data.selectedCategory = category
         }
    }
    
    struct HomeScroll_Previews: PreviewProvider {
        static var previews: some View {
            HomeScroll(category: "chicken")
        }
    }
}
